import 'package:dartz/dartz.dart';
import 'package:edu_assign/01_model/03_subjects/subject_model/subject_model.dart';
import 'package:edu_assign/05_services/http_service.dart';
import 'package:edu_assign/06_utils/end_points.dart';
import 'package:edu_assign/06_utils/failure/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class ISubjectRepo {
  Future<Either<Map<MainFailure, dynamic>, SubjectModel>> fetchSubjectRepo();
}

@LazySingleton(as: ISubjectRepo)
class SubjectRepo implements ISubjectRepo {
  final HttpService httpService;
  SubjectRepo(this.httpService);

  @override
  Future<Either<Map<MainFailure, dynamic>, SubjectModel>>
      fetchSubjectRepo() async {
    final res = await httpService.request(apiUrl: EndPoints.subjectApi);
    return await res.fold(
        (l) => Left(l), (r) => Right(SubjectModel.fromJson(r)));
  }
}
