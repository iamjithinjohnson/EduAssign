import 'package:edu_assign/01_model/03_subjects/subject_model/subject_model.dart';
import 'package:edu_assign/04_respository/03_subjects/subject_repo.dart';
import 'package:edu_assign/06_utils/api_response/api_response.dart';
import 'package:edu_assign/06_utils/injection/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'subject_view_model.g.dart';

final vmSubject = getIt<SubjectViewModel>();

@injectable
class SubjectViewModel extends SubjectViewModelBase with _$SubjectViewModel {
  SubjectViewModel(super.siteService);
}

abstract class SubjectViewModelBase with Store {
  final ISubjectRepo iSubjectRepo;
  SubjectViewModelBase(this.iSubjectRepo);

  @observable
  ApiResponse<SubjectModel> subjectResponse = ApiResponse<SubjectModel>();

  @action
  Future<void> fetchSubjectApi() async {
    try {
      subjectResponse = subjectResponse.copyWith(loading: true, errors: null);

      var res = await iSubjectRepo.fetchSubjectRepo();

      subjectResponse = res.fold((l) => ApiResponse(errors: l, loading: false),
          (r) => ApiResponse(data: r));
    } finally {
      subjectResponse = subjectResponse.copyWith(loading: false);
    }
  }
}
