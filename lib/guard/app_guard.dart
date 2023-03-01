import 'package:auto_route/auto_route.dart';
import 'package:push_noti/main.dart';
import 'package:push_noti/routes/app_router.gr.dart';

class AppGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if (!isLogin) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      router.replace(const AppRoute());
    }
  }
}
