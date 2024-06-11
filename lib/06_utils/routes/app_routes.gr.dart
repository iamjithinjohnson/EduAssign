// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:edu_assign/02_view/01_home_page/home_page.dart' as _i1;
import 'package:edu_assign/02_view/02_students/01_students_main_page.dart'
    as _i3;
import 'package:edu_assign/02_view/02_students/02_student_detail_page.dart'
    as _i2;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    StudentDetailRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.StudentDetailPage(),
      );
    },
    StudentsMainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.StudentsMainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.StudentDetailPage]
class StudentDetailRoute extends _i4.PageRouteInfo<void> {
  const StudentDetailRoute({List<_i4.PageRouteInfo>? children})
      : super(
          StudentDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentDetailRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.StudentsMainPage]
class StudentsMainRoute extends _i4.PageRouteInfo<void> {
  const StudentsMainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          StudentsMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentsMainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
