import 'package:dartz/dartz.dart';
import 'package:edu_assign/01_model/00_common_model/common_model.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/class_room_model.dart';
import 'package:edu_assign/05_services/http_service.dart';
import 'package:edu_assign/06_utils/end_points.dart';
import 'package:edu_assign/06_utils/failure/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IClassRoomRepo {
  Future<Either<Map<MainFailure, dynamic>, ClassRoomModel>>
      fetchClassRoomRepo();

  Future<Either<Map<MainFailure, dynamic>, EduModel>> classRoomDetailRepo(
      {required int classId});

  Future<Either<Map<MainFailure, dynamic>, String>> classRoomSubjectUpdateRepo(
      {required int subjectId, required int classId});
}

@LazySingleton(as: IClassRoomRepo)
class ClassRoomRepo implements IClassRoomRepo {
  final HttpService httpService;
  ClassRoomRepo(this.httpService);

  @override
  Future<Either<Map<MainFailure, dynamic>, ClassRoomModel>>
      fetchClassRoomRepo() async {
    final res = await httpService.request(apiUrl: EndPoints.classroomApi);
    return await res.fold(
        (l) => Left(l), (r) => Right(ClassRoomModel.fromJson(r)));
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, EduModel>> classRoomDetailRepo(
      {required int classId}) async {
    final res =
        await httpService.request(apiUrl: '${EndPoints.classroomApi}/$classId');
    return await res.fold((l) => Left(l), (r) => Right(EduModel.fromJson(r)));
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> classRoomSubjectUpdateRepo(
      {required int subjectId, required int classId}) async {
    final res = await httpService.multipartRequest(
        method: 'PATCH',
        apiUrl: '${EndPoints.classroomApi}/$classId',
        data: {"subject": subjectId});
    return await res.fold((l) => Left(l), (r) => const Right('success'));
  }
}
