import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:push_noti/routes/app_router.gr.dart';

@RoutePage()
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () async {},
            child: const Text('Go to detail by dynamic li nk'),
          ),
          const SizedBox(height: 10),
          IconButton(
            onPressed: () {
              context.pushRoute(MyHomeRoute(title: 'HOme'));
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
