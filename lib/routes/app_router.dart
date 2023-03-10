import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:push_noti/app_child_page.dart';
import 'package:push_noti/app_page.dart';
import 'package:push_noti/carousel_page.dart';
import 'package:push_noti/detail_page.dart';
import 'package:push_noti/first_page.dart';
import 'package:push_noti/guard/app_guard.dart';
import 'package:push_noti/guard/auth_guard.dart';
import 'package:push_noti/home_page.dart';
import 'package:push_noti/login_page.dart';
import 'package:push_noti/second_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: AppPage,
      guards: [AuthGuard],
      children: [
        AutoRoute(
          name: 'FirstRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: FirstPage, initial: true),
            AutoRoute(page: MyHomePage),
            AutoRoute(page: DetailPage),
          ],
        ),
        AutoRoute(
          name: 'SecondRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: SecondPage,
              initial: true,
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      page: CarouselPage,
    ),
    AutoRoute(
      page: LoginPage,
      guards: [AppGuard],
    ),
  ],
)
class $AppRouter {}
