import 'package:flutter/material.dart';
import 'package:push_noti/guard/app_guard.dart';
import 'package:push_noti/guard/auth_guard.dart';
import 'package:push_noti/notification_manager.dart';
import 'package:push_noti/routes/app_router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await NotificationManager().instance();

  runApp(MyApp());
}

final GlobalKey globalKey = GlobalKey();

var isLogin = false;
var isFirstLogin = true;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter(
    authGuard: AuthGuard(),
    appGuard: AppGuard(),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
