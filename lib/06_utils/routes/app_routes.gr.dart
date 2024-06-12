// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:edu_assign/01_model/02_students/student_model/student.dart'
    as _i8;
import 'package:edu_assign/01_model/03_subjects/subject_model/subject.dart'
    as _i9;
import 'package:edu_assign/02_view/01_home_page/home_page.dart' as _i1;
import 'package:edu_assign/02_view/02_students/01_students_main_page.dart'
    as _i3;
import 'package:edu_assign/02_view/02_students/02_student_detail_page.dart'
    as _i2;
import 'package:edu_assign/02_view/03_subjects/01_subject_main_page.dart'
    as _i5;
import 'package:edu_assign/02_view/03_subjects/02_subject_detail_page.dart'
    as _i4;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    StudentDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StudentDetailRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.StudentDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    StudentsMainRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.StudentsMainPage(),
      );
    },
    SubjectDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SubjectDetailRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SubjectDetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SubjectMainRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SubjectMainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.StudentDetailPage]
class StudentDetailRoute extends _i6.PageRouteInfo<StudentDetailRouteArgs> {
  StudentDetailRoute({
    _i7.Key? key,
    required _i8.Student? data,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          StudentDetailRoute.name,
          args: StudentDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'StudentDetailRoute';

  static const _i6.PageInfo<StudentDetailRouteArgs> page =
      _i6.PageInfo<StudentDetailRouteArgs>(name);
}

class StudentDetailRouteArgs {
  const StudentDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i7.Key? key;

  final _i8.Student? data;

  @override
  String toString() {
    return 'StudentDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i3.StudentsMainPage]
class StudentsMainRoute extends _i6.PageRouteInfo<void> {
  const StudentsMainRoute({List<_i6.PageRouteInfo>? children})
      : super(
          StudentsMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentsMainRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SubjectDetailPage]
class SubjectDetailRoute extends _i6.PageRouteInfo<SubjectDetailRouteArgs> {
  SubjectDetailRoute({
    _i7.Key? key,
    required _i9.Subject? data,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SubjectDetailRoute.name,
          args: SubjectDetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SubjectDetailRoute';

  static const _i6.PageInfo<SubjectDetailRouteArgs> page =
      _i6.PageInfo<SubjectDetailRouteArgs>(name);
}

class SubjectDetailRouteArgs {
  const SubjectDetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i7.Key? key;

  final _i9.Subject? data;

  @override
  String toString() {
    return 'SubjectDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i5.SubjectMainPage]
class SubjectMainRoute extends _i6.PageRouteInfo<void> {
  const SubjectMainRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SubjectMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubjectMainRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
