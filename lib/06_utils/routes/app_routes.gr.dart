// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:edu_assign/01_model/00_common_model/common_model.dart' as _i13;
import 'package:edu_assign/02_view/01_home_page/home_page.dart' as _i3;
import 'package:edu_assign/02_view/02_students/01_students_main_page.dart'
    as _i8;
import 'package:edu_assign/02_view/02_students/02_student_detail_page.dart'
    as _i7;
import 'package:edu_assign/02_view/03_subjects/01_subject_main_page.dart'
    as _i10;
import 'package:edu_assign/02_view/03_subjects/02_subject_detail_page.dart'
    as _i9;
import 'package:edu_assign/02_view/04_class_room/01_classRoom_main_page.dart'
    as _i2;
import 'package:edu_assign/02_view/04_class_room/02_classRoom_detail_page.dart'
    as _i1;
import 'package:edu_assign/02_view/05_registration/01_registration_main_page.dart'
    as _i6;
import 'package:edu_assign/02_view/05_registration/02_new_registration_page.dart'
    as _i4;
import 'package:edu_assign/02_view/05_registration/03_registration_detail_page.dart'
    as _i5;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    ClassRoomDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ClassRoomDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ClassRoomDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    ClassRoomMainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ClassRoomMainPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    NewRegistrationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NewRegistrationPage(),
      );
    },
    RegistrationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.RegistrationDetailPage(
          key: args.key,
          regId: args.regId,
        ),
      );
    },
    RegistrationMainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RegistrationMainPage(),
      );
    },
    StudentDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StudentDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.StudentDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    StudentsMainRoute.name: (routeData) {
      final args = routeData.argsAs<StudentsMainRouteArgs>(
          orElse: () => const StudentsMainRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.StudentsMainPage(
          key: args.key,
          isFromNewRegisgter: args.isFromNewRegisgter,
        ),
      );
    },
    SubjectDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SubjectDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SubjectDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SubjectMainRoute.name: (routeData) {
      final args = routeData.argsAs<SubjectMainRouteArgs>(
          orElse: () => const SubjectMainRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SubjectMainPage(
          key: args.key,
          classRoomID: args.classRoomID,
          isFromNewRegisgter: args.isFromNewRegisgter,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ClassRoomDetailPage]
class ClassRoomDetailRoute
    extends _i11.PageRouteInfo<ClassRoomDetailRouteArgs> {
  ClassRoomDetailRoute({
    _i12.Key? key,
    required _i13.EduModel? data,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          ClassRoomDetailRoute.name,
          args: ClassRoomDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ClassRoomDetailRoute';

  static const _i11.PageInfo<ClassRoomDetailRouteArgs> page =
      _i11.PageInfo<ClassRoomDetailRouteArgs>(name);
}

class ClassRoomDetailRouteArgs {
  const ClassRoomDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i12.Key? key;

  final _i13.EduModel? data;

  @override
  String toString() {
    return 'ClassRoomDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i2.ClassRoomMainPage]
class ClassRoomMainRoute extends _i11.PageRouteInfo<void> {
  const ClassRoomMainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ClassRoomMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClassRoomMainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NewRegistrationPage]
class NewRegistrationRoute extends _i11.PageRouteInfo<void> {
  const NewRegistrationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NewRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewRegistrationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RegistrationDetailPage]
class RegistrationDetailRoute
    extends _i11.PageRouteInfo<RegistrationDetailRouteArgs> {
  RegistrationDetailRoute({
    _i14.Key? key,
    required int regId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          RegistrationDetailRoute.name,
          args: RegistrationDetailRouteArgs(
            key: key,
            regId: regId,
          ),
          initialChildren: children,
        );

  static const String name = 'RegistrationDetailRoute';

  static const _i11.PageInfo<RegistrationDetailRouteArgs> page =
      _i11.PageInfo<RegistrationDetailRouteArgs>(name);
}

class RegistrationDetailRouteArgs {
  const RegistrationDetailRouteArgs({
    this.key,
    required this.regId,
  });

  final _i14.Key? key;

  final int regId;

  @override
  String toString() {
    return 'RegistrationDetailRouteArgs{key: $key, regId: $regId}';
  }
}

/// generated route for
/// [_i6.RegistrationMainPage]
class RegistrationMainRoute extends _i11.PageRouteInfo<void> {
  const RegistrationMainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegistrationMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationMainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.StudentDetailPage]
class StudentDetailRoute extends _i11.PageRouteInfo<StudentDetailRouteArgs> {
  StudentDetailRoute({
    _i12.Key? key,
    required _i13.EduModel? data,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          StudentDetailRoute.name,
          args: StudentDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'StudentDetailRoute';

  static const _i11.PageInfo<StudentDetailRouteArgs> page =
      _i11.PageInfo<StudentDetailRouteArgs>(name);
}

class StudentDetailRouteArgs {
  const StudentDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i12.Key? key;

  final _i13.EduModel? data;

  @override
  String toString() {
    return 'StudentDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i8.StudentsMainPage]
class StudentsMainRoute extends _i11.PageRouteInfo<StudentsMainRouteArgs> {
  StudentsMainRoute({
    _i12.Key? key,
    bool isFromNewRegisgter = false,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          StudentsMainRoute.name,
          args: StudentsMainRouteArgs(
            key: key,
            isFromNewRegisgter: isFromNewRegisgter,
          ),
          initialChildren: children,
        );

  static const String name = 'StudentsMainRoute';

  static const _i11.PageInfo<StudentsMainRouteArgs> page =
      _i11.PageInfo<StudentsMainRouteArgs>(name);
}

class StudentsMainRouteArgs {
  const StudentsMainRouteArgs({
    this.key,
    this.isFromNewRegisgter = false,
  });

  final _i12.Key? key;

  final bool isFromNewRegisgter;

  @override
  String toString() {
    return 'StudentsMainRouteArgs{key: $key, isFromNewRegisgter: $isFromNewRegisgter}';
  }
}

/// generated route for
/// [_i9.SubjectDetailPage]
class SubjectDetailRoute extends _i11.PageRouteInfo<SubjectDetailRouteArgs> {
  SubjectDetailRoute({
    _i12.Key? key,
    required _i13.EduModel? data,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SubjectDetailRoute.name,
          args: SubjectDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SubjectDetailRoute';

  static const _i11.PageInfo<SubjectDetailRouteArgs> page =
      _i11.PageInfo<SubjectDetailRouteArgs>(name);
}

class SubjectDetailRouteArgs {
  const SubjectDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i12.Key? key;

  final _i13.EduModel? data;

  @override
  String toString() {
    return 'SubjectDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i10.SubjectMainPage]
class SubjectMainRoute extends _i11.PageRouteInfo<SubjectMainRouteArgs> {
  SubjectMainRoute({
    _i12.Key? key,
    int? classRoomID,
    bool isFromNewRegisgter = false,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SubjectMainRoute.name,
          args: SubjectMainRouteArgs(
            key: key,
            classRoomID: classRoomID,
            isFromNewRegisgter: isFromNewRegisgter,
          ),
          initialChildren: children,
        );

  static const String name = 'SubjectMainRoute';

  static const _i11.PageInfo<SubjectMainRouteArgs> page =
      _i11.PageInfo<SubjectMainRouteArgs>(name);
}

class SubjectMainRouteArgs {
  const SubjectMainRouteArgs({
    this.key,
    this.classRoomID,
    this.isFromNewRegisgter = false,
  });

  final _i12.Key? key;

  final int? classRoomID;

  final bool isFromNewRegisgter;

  @override
  String toString() {
    return 'SubjectMainRouteArgs{key: $key, classRoomID: $classRoomID, isFromNewRegisgter: $isFromNewRegisgter}';
  }
}
