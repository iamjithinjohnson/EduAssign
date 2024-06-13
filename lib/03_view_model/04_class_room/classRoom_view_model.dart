import 'package:edu_assign/01_model/03_subjects/subject_model/subject.dart';
import 'package:edu_assign/01_model/03_subjects/subject_model/subject_model.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/class_room_model.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/classroom.dart';
import 'package:edu_assign/03_view_model/03_subjects/subject_view_model.dart';
import 'package:edu_assign/04_respository/03_subjects/subject_repo.dart';
import 'package:edu_assign/04_respository/04_class_room/class_room_repo.dart';
import 'package:edu_assign/06_utils/api_response/api_response.dart';
import 'package:edu_assign/06_utils/injection/injection.dart';
import 'package:edu_assign/07_widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'classRoom_view_model.g.dart';

final vmClassRoom = getIt<ClassRoomViewModel>();

@injectable
class ClassRoomViewModel extends ClassRoomViewModelBase
    with _$ClassRoomViewModel {
  ClassRoomViewModel(super.siteService);
}

abstract class ClassRoomViewModelBase with Store {
  final IClassRoomRepo iClassRoomRepo;
  ClassRoomViewModelBase(this.iClassRoomRepo);

  @observable
  ApiResponse<ClassRoomModel> classRoomResponse = ApiResponse<ClassRoomModel>();

  @observable
  ApiResponse<String> subjectUpdateResponse = ApiResponse<String>();

  @action
  Future<void> fetchClassRoomApi() async {
    try {
      classRoomResponse =
          classRoomResponse.copyWith(loading: true, errors: null);

      var res = await iClassRoomRepo.fetchClassRoomRepo();

      classRoomResponse = res.fold(
          (l) => ApiResponse(errors: l, loading: false),
          (r) => ApiResponse(data: r));
    } finally {
      classRoomResponse = classRoomResponse.copyWith(loading: false);
    }
  }

  @observable
  Subject? detailSubject;

  @action
  void getSubjectName(int subId) {
    List<Subject>? subjects = vmSubject.subjectResponse.data?.subjects;

    detailSubject = subjects?.firstWhere((element) => element.id == subId,
        orElse: () => Subject());
  }

  @observable
  ApiResponse<Classroom> classDetailResponse = ApiResponse<Classroom>();

  @action
  Future<void> classRoomDetailApi({required int classId}) async {
    detailSubject = null;
    try {
      classDetailResponse =
          classDetailResponse.copyWith(loading: true, errors: null);

      var res = await iClassRoomRepo.classRoomDetailRepo(classId: classId);

      classDetailResponse =
          res.fold((l) => ApiResponse(errors: l, loading: false), (r) {
        if (r.subject is int) {
          getSubjectName(r.subject);
        }

        return ApiResponse(data: r);
      });
    } finally {
      classDetailResponse = classDetailResponse.copyWith(loading: false);
    }
  }

  @action
  Future<void> updateClassRoomSubjectApi(BuildContext context,
      {required int subjectId, required int classId}) async {
    try {
      subjectUpdateResponse =
          subjectUpdateResponse.copyWith(loading: true, errors: null);

      classDetailResponse =
          classDetailResponse.copyWith(loading: true, errors: null);

      Navigator.pop(context);

      var res = await iClassRoomRepo.classRoomSubjectUpdateRepo(
          subjectId: subjectId, classId: classId);

      subjectUpdateResponse = res.fold((l) {
        popupErrorData(context, mainFailure: l);
        return ApiResponse(errors: l, loading: false);
      }, (r) {
        classRoomDetailApi(classId: classId);
        return ApiResponse(data: r);
      });
    } finally {
      subjectUpdateResponse = subjectUpdateResponse.copyWith(loading: false);
    }
  }
}
