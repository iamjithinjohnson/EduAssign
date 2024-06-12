import 'package:dartz/dartz.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/class_room_model.dart';
import 'package:edu_assign/05_services/http_service.dart';
import 'package:edu_assign/06_utils/end_points.dart';
import 'package:edu_assign/06_utils/failure/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IClassRoomRepo {
  Future<Either<Map<MainFailure, dynamic>, ClassRoomModel>>
      fetchClassRoomRepo();
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
}
