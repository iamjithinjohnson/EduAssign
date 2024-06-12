import 'package:edu_assign/01_model/03_subjects/subject_model/subject_model.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/class_room_model.dart';
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

  @action
  Future<void> updateClassRoomSubjectApi(BuildContext context,
      {required int subjectId, required int classId}) async {
    try {
      subjectUpdateResponse =
          subjectUpdateResponse.copyWith(loading: true, errors: null);

      var res = await iClassRoomRepo.classRoomSubjectUpdateRepo(
          subjectId: subjectId, classId: classId);

      subjectUpdateResponse = res.fold((l) {
        Navigator.pop(context);
        popupErrorData(context, mainFailure: l);
        return ApiResponse(errors: l, loading: false);
      }, (r) => ApiResponse(data: r));
    } finally {
      subjectUpdateResponse = subjectUpdateResponse.copyWith(loading: false);
    }
  }
}
