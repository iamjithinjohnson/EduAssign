import 'package:edu_assign/01_model/00_common_model/common_model.dart';
import 'package:edu_assign/01_model/05_registration/registration_model/registration_model.dart';
import 'package:edu_assign/03_view_model/02_students/students_view_model.dart';
import 'package:edu_assign/03_view_model/03_subjects/subject_view_model.dart';
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
  EduModel? student;

  @observable
  EduModel? subject;

  @observable
  EduModel? detailStudent;

  @observable
  EduModel? detailSubject;

  @action
  void fetchSingleStudent(int stdId) {
    List<EduModel>? students = vmStudent.studentResponse.data?.students;

    detailStudent = students?.firstWhere((element) => element.id == stdId,
        orElse: () => EduModel());
  }

  @action
  void fetchSingleSubject(int subId) {
    List<EduModel>? subjects = vmSubject.subjectResponse.data?.subjects;

    detailSubject = subjects?.firstWhere((element) => element.id == subId,
        orElse: () => EduModel());
  }

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
  ApiResponse<EduModel> newRegistrationResponse = ApiResponse<EduModel>();

  @action
  Future<void> newRegisterApi(BuildContext context,
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
        registrationResponse = registrationResponse.copyWith(
            data: registrationResponse.data?.copyWith(
                registrations:
                    registrationResponse.data?.registrations?.toList()
                      ?..add(r)));
        Navigator.pop(context);
        return ApiResponse(data: r);
      });
    } finally {
      newRegistrationResponse =
          newRegistrationResponse.copyWith(loading: false);
    }
  }

  @observable
  ApiResponse<String> deleteRegResponse = ApiResponse<String>();

  @action
  Future<void> deleteRegistrationApi(BuildContext context,
      {required int regId}) async {
    try {
      deleteRegResponse =
          deleteRegResponse.copyWith(loading: true, errors: null);

      var res = await iRegistrationRepo.deleteRegistersRepo(regId: regId);
      RegistrationModel? regModel;
      deleteRegResponse = res.fold((l) {
        popupErrorData(context, mainFailure: l);
        return ApiResponse(errors: l, loading: false);
      }, (r) {
        regModel = registrationResponse.data;
        List<EduModel>? reg = regModel?.registrations?.toList();
        reg?.removeWhere((element) => element.id == regId);
        regModel = regModel?.copyWith(registrations: reg);
        registrationResponse = registrationResponse.copyWith(data: regModel);
        return ApiResponse(data: r);
      });
    } finally {
      deleteRegResponse = deleteRegResponse.copyWith(loading: false);
    }
  }
}
