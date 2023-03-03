import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:push_noti/dynamic_link_manager.dart';
import 'package:push_noti/main.dart';
import 'package:push_noti/routes/app_router.gr.dart';
import 'package:share_plus/share_plus.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 40) / 2;
    final height = width * 3.5 / 3;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () async {
                  final link = await DynamicLinkManagers().onBuildLink('123');

                  Share.share(link.toString());
                },
                icon: const Icon(Icons.share),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  isLogin = false;
                  context.replaceRoute(const LoginRoute());
                },
                child: const Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              )
            ],
          ),
          body: GridView.builder(
            itemCount: 10,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: width / height,
            ),
            itemBuilder: _itemBuilder,
          )

          //  ListView.builder(
          //   padding: EdgeInsets.zero,
          //   // shrinkWrap: true,
          //   // physics: const NeverScrollableScrollPhysics(),
          //   itemBuilder: _itemBuilder,
          //   itemCount: 1,
          // ),
          ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final width = (MediaQuery.of(context).size.width - 40) / 2;
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            height: width,
          ),
          const SizedBox(height: 4),
          const Text('123412341'),
        ],
      ),
    );
  }

  // Widget _itemBuilder(BuildContext context, int index) {
  //   return Column(
  //     children: [
  //       Container(color: Colors.amber, height: 1000),
  //       SizedBox(
  //         height: 100,
  //         child: Focus(
  //           onFocusChange: (value) async {
  //             // if (value) {
  //             //   await Future.delayed(const Duration(milliseconds: 600));
  //             //   scrollController.animateTo(
  //             //     scrollController.position.maxScrollExtent,
  //             //     duration: const Duration(milliseconds: 100),
  //             //     curve: Curves.linear,
  //             //   );
  //             // }
  //           },
  //           child: const TextField(
  //             scrollPadding: EdgeInsets.only(bottom: 100),
  //             expands: true,
  //             maxLines: null,
  //           ),
  //         ),
  //       ),
  //       Container(
  //         color: Colors.blue,
  //         height: 100,
  //       ),
  //     ],
  //   );
  // }
}
