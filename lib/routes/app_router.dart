import 'package:auto_route/auto_route.dart';
import 'package:push_noti/guard/app_guard.dart';
import 'package:push_noti/guard/auth_guard.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: AppRoute.page,
          guards: [AuthGuard()],
          children: [
            AutoRoute(
              page: FirstRouter.page,
              children: [
                AutoRoute(page: FirstRoute.page, initial: true),
                AutoRoute(page: MyHomeRoute.page),
                AutoRoute(page: DetailRoute.page),
              ],
            ),
            AutoRoute(
              page: SecondRouter.page,
              children: [
                AutoRoute(
                  page: SecondRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(page: CarouselRoute.page),
        AutoRoute(
          page: LoginRoute.page,
          guards: [AppGuard()],
        ),
      ];
}
