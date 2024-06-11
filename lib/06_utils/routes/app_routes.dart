import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/06_utils/routes/app_routes.gr.dart';
import 'package:edu_assign/06_utils/routes/route_names.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: RouteNames.homePage,
        ),
        AutoRoute(
          page: StudentsMainRoute.page,
          path: RouteNames.studentPage,
        ),
        AutoRoute(
          page: StudentDetailRoute.page,
          path: RouteNames.studentDetailPage,
        ),
      ];
}
