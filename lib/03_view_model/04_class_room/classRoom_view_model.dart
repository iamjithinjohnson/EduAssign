import 'package:edu_assign/01_model/03_subjects/subject_model/subject_model.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/class_room_model.dart';
import 'package:edu_assign/04_respository/03_subjects/subject_repo.dart';
import 'package:edu_assign/04_respository/04_class_room/class_room_repo.dart';
import 'package:edu_assign/06_utils/api_response/api_response.dart';
import 'package:edu_assign/06_utils/injection/injection.dart';
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
}
