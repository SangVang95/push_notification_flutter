import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:push_noti/routes/app_router.gr.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        AppChildRoute(),
        SecondRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.grey,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'First',
                icon: Icon(Icons.first_page),
              ),
              BottomNavigationBarItem(
                label: 'Posts',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        );
      },
    );
  }
}
