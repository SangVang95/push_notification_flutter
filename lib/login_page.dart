import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:push_noti/main.dart';
import 'package:push_noti/routes/app_router.gr.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Login'),
          onPressed: () {
            isLogin = true;
            if (isFirstLogin) {
              context.replaceRoute(CarouselRoute());
              isFirstLogin = false;
              return;
            }
            context.replaceRoute(const AppRoute());
          },
        ),
      ),
    );
  }
}
