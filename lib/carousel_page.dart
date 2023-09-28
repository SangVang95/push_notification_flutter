import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:push_noti/routes/app_router.gr.dart';

@RoutePage()
class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carousel')),
      body: Center(
        child: TextButton(
          child: const Text('Skip'),
          onPressed: () {
            context.replaceRoute(const AppRoute());
          },
        ),
      ),
    );
  }
}
