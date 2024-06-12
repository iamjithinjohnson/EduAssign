// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:edu_assign/01_model/02_students/student_model/student.dart'
    as _i11;
import 'package:edu_assign/01_model/03_subjects/subject_model/subject.dart'
    as _i12;
import 'package:edu_assign/01_model/04_class_room/class_room_model/classroom.dart'
    as _i10;
import 'package:edu_assign/02_view/01_home_page/home_page.dart' as _i3;
import 'package:edu_assign/02_view/02_students/01_students_main_page.dart'
    as _i5;
import 'package:edu_assign/02_view/02_students/02_student_detail_page.dart'
    as _i4;
import 'package:edu_assign/02_view/03_subjects/01_subject_main_page.dart'
    as _i7;
import 'package:edu_assign/02_view/03_subjects/02_subject_detail_page.dart'
    as _i6;
import 'package:edu_assign/02_view/04_class_room/01_classRoom_main_page.dart'
    as _i2;
import 'package:edu_assign/02_view/04_class_room/02_classRoom_detail_page.dart'
    as _i1;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    ClassRoomDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ClassRoomDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ClassRoomDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    ClassRoomMainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ClassRoomMainPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    StudentDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StudentDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.StudentDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    StudentsMainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.StudentsMainPage(),
      );
    },
    SubjectDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SubjectDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SubjectDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SubjectMainRoute.name: (routeData) {
      final args = routeData.argsAs<SubjectMainRouteArgs>(
          orElse: () => const SubjectMainRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SubjectMainPage(
          key: args.key,
          classRoomID: args.classRoomID,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ClassRoomDetailPage]
class ClassRoomDetailRoute extends _i8.PageRouteInfo<ClassRoomDetailRouteArgs> {
  ClassRoomDetailRoute({
    _i9.Key? key,
    required _i10.Classroom? data,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ClassRoomDetailRoute.name,
          args: ClassRoomDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ClassRoomDetailRoute';

  static const _i8.PageInfo<ClassRoomDetailRouteArgs> page =
      _i8.PageInfo<ClassRoomDetailRouteArgs>(name);
}

class ClassRoomDetailRouteArgs {
  const ClassRoomDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i9.Key? key;

  final _i10.Classroom? data;

  @override
  String toString() {
    return 'ClassRoomDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i2.ClassRoomMainPage]
class ClassRoomMainRoute extends _i8.PageRouteInfo<void> {
  const ClassRoomMainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ClassRoomMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClassRoomMainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.StudentDetailPage]
class StudentDetailRoute extends _i8.PageRouteInfo<StudentDetailRouteArgs> {
  StudentDetailRoute({
    _i9.Key? key,
    required _i11.Student? data,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          StudentDetailRoute.name,
          args: StudentDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'StudentDetailRoute';

  static const _i8.PageInfo<StudentDetailRouteArgs> page =
      _i8.PageInfo<StudentDetailRouteArgs>(name);
}

class StudentDetailRouteArgs {
  const StudentDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i9.Key? key;

  final _i11.Student? data;

  @override
  String toString() {
    return 'StudentDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i5.StudentsMainPage]
class StudentsMainRoute extends _i8.PageRouteInfo<void> {
  const StudentsMainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          StudentsMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentsMainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SubjectDetailPage]
class SubjectDetailRoute extends _i8.PageRouteInfo<SubjectDetailRouteArgs> {
  SubjectDetailRoute({
    _i9.Key? key,
    required _i12.Subject? data,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SubjectDetailRoute.name,
          args: SubjectDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SubjectDetailRoute';

  static const _i8.PageInfo<SubjectDetailRouteArgs> page =
      _i8.PageInfo<SubjectDetailRouteArgs>(name);
}

class SubjectDetailRouteArgs {
  const SubjectDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i9.Key? key;

  final _i12.Subject? data;

  @override
  String toString() {
    return 'SubjectDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i7.SubjectMainPage]
class SubjectMainRoute extends _i8.PageRouteInfo<SubjectMainRouteArgs> {
  SubjectMainRoute({
    _i9.Key? key,
    int? classRoomID,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SubjectMainRoute.name,
          args: SubjectMainRouteArgs(
            key: key,
            classRoomID: classRoomID,
          ),
          initialChildren: children,
        );

  static const String name = 'SubjectMainRoute';

  static const _i8.PageInfo<SubjectMainRouteArgs> page =
      _i8.PageInfo<SubjectMainRouteArgs>(name);
}

class SubjectMainRouteArgs {
  const SubjectMainRouteArgs({
    this.key,
    this.classRoomID,
  });

  final _i9.Key? key;

  final int? classRoomID;

  @override
  String toString() {
    return 'SubjectMainRouteArgs{key: $key, classRoomID: $classRoomID}';
  }
}
