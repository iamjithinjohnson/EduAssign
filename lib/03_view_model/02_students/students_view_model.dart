import 'package:edu_assign/01_model/02_students/student_model/student_model.dart';
import 'package:edu_assign/04_respository/02_students/students_repo.dart';
import 'package:edu_assign/06_utils/api_response/api_response.dart';
import 'package:edu_assign/06_utils/injection/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'students_view_model.g.dart';

final vmStudent = getIt<StudentViewModel>();

@injectable
class StudentViewModel extends StudentViewModelBase with _$StudentViewModel {
  StudentViewModel(super.siteService);
}

abstract class StudentViewModelBase with Store {
  final IStudentsRepo iStudentsRepo;
  StudentViewModelBase(this.iStudentsRepo);

  @observable
  ApiResponse<StudentModel> studentResponse = ApiResponse<StudentModel>();

  @action
  Future<void> fetchStudentsApi() async {
    try {
      studentResponse = studentResponse.copyWith(loading: true, errors: null);

      var res = await iStudentsRepo.fetchStudentsRepo();

      studentResponse = res.fold((l) => ApiResponse(errors: l, loading: false),
          (r) => ApiResponse(data: r));
    } finally {
      studentResponse = studentResponse.copyWith(loading: false);
    }
  }
}
