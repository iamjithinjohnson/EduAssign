import 'package:edu_assign/01_model/02_students/student_model/student.dart';
import 'package:edu_assign/01_model/03_subjects/subject_model/subject.dart';
import 'package:edu_assign/01_model/05_registration/registration_model/registration_model.dart';
import 'package:edu_assign/04_respository/05_registration/registration_repo.dart';
import 'package:edu_assign/06_utils/api_response/api_response.dart';
import 'package:edu_assign/06_utils/injection/injection.dart';
import 'package:edu_assign/07_widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'registration_view_model.g.dart';

final vmRegistration = getIt<RegistrationViewModel>();

@injectable
class RegistrationViewModel extends RegistrationViewModelBase
    with _$RegistrationViewModel {
  RegistrationViewModel(super.siteService);
}

abstract class RegistrationViewModelBase with Store {
  final IRegistrationRepo iRegistrationRepo;
  RegistrationViewModelBase(this.iRegistrationRepo);

  @observable
  Student? student;

  @observable
  Subject? subject;

  @observable
  ApiResponse<RegistrationModel> registrationResponse =
      ApiResponse<RegistrationModel>();

  @action
  Future<void> fetchRegistrationApi() async {
    try {
      registrationResponse =
          registrationResponse.copyWith(loading: true, errors: null);

      var res = await iRegistrationRepo.fetchRegistersRepo();

      registrationResponse = res.fold(
          (l) => ApiResponse(errors: l, loading: false),
          (r) => ApiResponse(data: r));
    } finally {
      registrationResponse = registrationResponse.copyWith(loading: false);
    }
  }

  @observable
  ApiResponse<String> newRegistrationResponse = ApiResponse<String>();

  @action
  Future<void> updateClassRoomSubjectApi(BuildContext context,
      {required int subjectId, required int studentId}) async {
    try {
      newRegistrationResponse =
          newRegistrationResponse.copyWith(loading: true, errors: null);

      var res = await iRegistrationRepo.newRegistersRepo(
          subjectId: subjectId, studentId: studentId);

      newRegistrationResponse = res.fold((l) {
        popupErrorData(context, mainFailure: l);
        return ApiResponse(errors: l, loading: false);
      }, (r) {
        subject = null;
        student = null;
        return ApiResponse(data: r);
      });
    } finally {
      newRegistrationResponse =
          newRegistrationResponse.copyWith(loading: false);
    }
  }
}
