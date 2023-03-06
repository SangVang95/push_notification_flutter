// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:auto_route/empty_router_widgets.dart' as _i4;
import 'package:flutter/material.dart' as _i10;

import '../app_page.dart' as _i1;
import '../carousel_page.dart' as _i2;
import '../detail_page.dart' as _i7;
import '../first_page.dart' as _i5;
import '../guard/app_guard.dart' as _i12;
import '../guard/auth_guard.dart' as _i11;
import '../home_page.dart' as _i6;
import '../login_page.dart' as _i3;
import '../second_page.dart' as _i8;

class AppRouter extends _i9.RootStackRouter {
  AppRouter({
    _i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
    required this.authGuard,
    required this.appGuard,
  }) : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  final _i12.AppGuard appGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AppRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AppPage(),
      );
    },
    CarouselRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.CarouselPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    FirstRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    SecondRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    FirstRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FirstPage(),
      );
    },
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.MyHomePage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    DetailRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.DetailPage(),
      );
    },
    SecondRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SecondPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          AppRoute.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i9.RouteConfig(
              FirstRouter.name,
              path: 'empty-router-page',
              parent: AppRoute.name,
              children: [
                _i9.RouteConfig(
                  FirstRoute.name,
                  path: '',
                  parent: FirstRouter.name,
                ),
                _i9.RouteConfig(
                  MyHomeRoute.name,
                  path: 'my-home-page',
                  parent: FirstRouter.name,
                ),
                _i9.RouteConfig(
                  DetailRoute.name,
                  path: 'detail-page',
                  parent: FirstRouter.name,
                ),
              ],
            ),
            _i9.RouteConfig(
              SecondRouter.name,
              path: 'empty-router-page',
              parent: AppRoute.name,
              children: [
                _i9.RouteConfig(
                  SecondRoute.name,
                  path: '',
                  parent: SecondRouter.name,
                )
              ],
            ),
          ],
        ),
        _i9.RouteConfig(
          CarouselRoute.name,
          path: '/carousel-page',
        ),
        _i9.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
          guards: [appGuard],
        ),
      ];
}

/// generated route for
/// [_i1.AppPage]
class AppRoute extends _i9.PageRouteInfo<void> {
  const AppRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AppRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AppRoute';
}

/// generated route for
/// [_i2.CarouselPage]
class CarouselRoute extends _i9.PageRouteInfo<void> {
  const CarouselRoute()
      : super(
          CarouselRoute.name,
          path: '/carousel-page',
        );

  static const String name = 'CarouselRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class FirstRouter extends _i9.PageRouteInfo<void> {
  const FirstRouter({List<_i9.PageRouteInfo>? children})
      : super(
          FirstRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'FirstRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class SecondRouter extends _i9.PageRouteInfo<void> {
  const SecondRouter({List<_i9.PageRouteInfo>? children})
      : super(
          SecondRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'SecondRouter';
}

/// generated route for
/// [_i5.FirstPage]
class FirstRoute extends _i9.PageRouteInfo<void> {
  const FirstRoute()
      : super(
          FirstRoute.name,
          path: '',
        );

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i6.MyHomePage]
class MyHomeRoute extends _i9.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i10.Key? key,
    required String title,
  }) : super(
          MyHomeRoute.name,
          path: 'my-home-page',
          args: MyHomeRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'MyHomeRoute';
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({
    this.key,
    required this.title,
  });

  final _i10.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i7.DetailPage]
class DetailRoute extends _i9.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: 'detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i8.SecondPage]
class SecondRoute extends _i9.PageRouteInfo<void> {
  const SecondRoute()
      : super(
          SecondRoute.name,
          path: '',
        );

  static const String name = 'SecondRoute';
}
