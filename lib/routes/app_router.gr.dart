// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:push_noti/app_page.dart' as _i1;
import 'package:push_noti/carousel_page.dart' as _i2;
import 'package:push_noti/detail_page.dart' as _i3;
import 'package:push_noti/first_page.dart' as _i4;
import 'package:push_noti/home_page.dart' as _i7;
import 'package:push_noti/login_page.dart' as _i6;
import 'package:push_noti/routes/first_router.dart' as _i5;
import 'package:push_noti/routes/second_router.dart' as _i9;
import 'package:push_noti/second_page.dart' as _i8;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AppRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppPage(),
      );
    },
    CarouselRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CarouselPage(),
      );
    },
    DetailRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DetailPage(),
      );
    },
    FirstRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FirstPage(),
      );
    },
    FirstRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FirstRouterPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.MyHomePage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    SecondRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SecondPage(),
      );
    },
    SecondRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SecondRouterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppPage]
class AppRoute extends _i10.PageRouteInfo<void> {
  const AppRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AppRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CarouselPage]
class CarouselRoute extends _i10.PageRouteInfo<void> {
  const CarouselRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CarouselRoute.name,
          initialChildren: children,
        );

  static const String name = 'CarouselRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DetailPage]
class DetailRoute extends _i10.PageRouteInfo<void> {
  const DetailRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FirstPage]
class FirstRoute extends _i10.PageRouteInfo<void> {
  const FirstRoute({List<_i10.PageRouteInfo>? children})
      : super(
          FirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FirstRouterPage]
class FirstRouter extends _i10.PageRouteInfo<void> {
  const FirstRouter({List<_i10.PageRouteInfo>? children})
      : super(
          FirstRouter.name,
          initialChildren: children,
        );

  static const String name = 'FirstRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MyHomePage]
class MyHomeRoute extends _i10.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i11.Key? key,
    required String title,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          MyHomeRoute.name,
          args: MyHomeRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const _i10.PageInfo<MyHomeRouteArgs> page =
      _i10.PageInfo<MyHomeRouteArgs>(name);
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({
    this.key,
    required this.title,
  });

  final _i11.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i8.SecondPage]
class SecondRoute extends _i10.PageRouteInfo<void> {
  const SecondRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SecondRouterPage]
class SecondRouter extends _i10.PageRouteInfo<void> {
  const SecondRouter({List<_i10.PageRouteInfo>? children})
      : super(
          SecondRouter.name,
          initialChildren: children,
        );

  static const String name = 'SecondRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
