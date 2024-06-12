// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:edu_assign/03_view_model/02_students/students_view_model.dart'
    as _i8;
import 'package:edu_assign/03_view_model/03_subjects/subject_view_model.dart'
    as _i9;
import 'package:edu_assign/03_view_model/04_class_room/classRoom_view_model.dart'
    as _i10;
import 'package:edu_assign/03_view_model/05_registration/registration_view_model.dart'
    as _i11;
import 'package:edu_assign/04_respository/02_students/students_repo.dart'
    as _i4;
import 'package:edu_assign/04_respository/03_subjects/subject_repo.dart' as _i6;
import 'package:edu_assign/04_respository/04_class_room/class_room_repo.dart'
    as _i7;
import 'package:edu_assign/04_respository/05_registration/registration_repo.dart'
    as _i5;
import 'package:edu_assign/05_services/http_service.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.HttpService>(() => _i3.HttpService());
    gh.lazySingleton<_i4.IStudentsRepo>(
        () => _i4.StudentsRepo(gh<_i3.HttpService>()));
    gh.lazySingleton<_i5.IRegistrationRepo>(
        () => _i5.RegistrationRepo(gh<_i3.HttpService>()));
    gh.lazySingleton<_i6.ISubjectRepo>(
        () => _i6.SubjectRepo(gh<_i3.HttpService>()));
    gh.lazySingleton<_i7.IClassRoomRepo>(
        () => _i7.ClassRoomRepo(gh<_i3.HttpService>()));
    gh.factory<_i8.StudentViewModel>(
        () => _i8.StudentViewModel(gh<_i4.IStudentsRepo>()));
    gh.factory<_i9.SubjectViewModel>(
        () => _i9.SubjectViewModel(gh<_i6.ISubjectRepo>()));
    gh.factory<_i10.ClassRoomViewModel>(
        () => _i10.ClassRoomViewModel(gh<_i7.IClassRoomRepo>()));
    gh.factory<_i11.RegistrationViewModel>(
        () => _i11.RegistrationViewModel(gh<_i5.IRegistrationRepo>()));
    return this;
  }
}
