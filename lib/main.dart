import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:push_noti/dynamic_link_manager.dart';
import 'package:push_noti/firebase_options.dart';
import 'package:push_noti/notification_manager.dart';
import 'package:push_noti/routes/app_router.dart';

final locator = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await NotificationManager().instance();

  locator.registerSingleton<AppRouter>(AppRouter());

  runApp(const MyApp());
}

final GlobalKey globalKey = GlobalKey();

var isLogin = false;
var isFirstLogin = true;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await DynamicLinkManagers().instance();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: locator<AppRouter>().delegate(),
      routeInformationParser: locator<AppRouter>().defaultRouteParser(),
    );
  }
}
