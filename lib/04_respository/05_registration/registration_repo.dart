import 'package:dartz/dartz.dart';
import 'package:edu_assign/01_model/05_registration/registration_model/registration_model.dart';
import 'package:edu_assign/05_services/http_service.dart';
import 'package:edu_assign/06_utils/end_points.dart';
import 'package:edu_assign/06_utils/failure/main_failure.dart';
import 'package:injectable/injectable.dart';

abstract class IRegistrationRepo {
  Future<Either<Map<MainFailure, dynamic>, RegistrationModel>>
      fetchRegistersRepo();

  Future<Either<Map<MainFailure, dynamic>, String>> newRegistersRepo(
      {required int subjectId, required int studentId});
}

@LazySingleton(as: IRegistrationRepo)
class RegistrationRepo implements IRegistrationRepo {
  final HttpService httpService;
  RegistrationRepo(this.httpService);

  @override
  Future<Either<Map<MainFailure, dynamic>, RegistrationModel>>
      fetchRegistersRepo() async {
    final res = await httpService.request(apiUrl: EndPoints.registration);
    return await res.fold(
        (l) => Left(l), (r) => Right(RegistrationModel.fromJson(r)));
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, String>> newRegistersRepo(
      {required int subjectId, required int studentId}) async {
    final res = await httpService.request(
        method: HttpMethod.post,
        apiUrl: EndPoints.registration,
        payLoad: {
          "subject": subjectId.toString(),
          "student": studentId.toString(),
        });
    return await res.fold((l) => Left(l), (r) => const Right('success'));
  }
}
