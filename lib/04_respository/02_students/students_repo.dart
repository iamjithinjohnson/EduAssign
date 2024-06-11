import 'package:dartz/dartz.dart';
import 'package:edu_assign/01_model/02_students/student_model/student_model.dart';
import 'package:edu_assign/05_services/http_service.dart';
import 'package:edu_assign/06_utils/end_points.dart';
import 'package:edu_assign/06_utils/failure/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IStudentsRepo {
  Future<Either<Map<MainFailure, dynamic>, StudentModel>> fetchStudentsRepo();
}

@LazySingleton(as: IStudentsRepo)
class StudentsRepo implements IStudentsRepo {
  final HttpService httpService;
  StudentsRepo(this.httpService);

  @override
  Future<Either<Map<MainFailure, dynamic>, StudentModel>>
      fetchStudentsRepo() async {
    final res = await httpService.request(apiUrl: EndPoints.studentApi);
    return await res.fold(
        (l) => Left(l), (r) => Right(StudentModel.fromJson(r)));
  }
}
