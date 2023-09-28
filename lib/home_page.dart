import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:push_noti/detail_page.dart';
import 'package:push_noti/notification_manager.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    // setState(() {
    //   _counter++;
    // });
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const DetailPage();
    }));
  }

  @override
  void initState() {
    super.initState();
    _initMessage();
  }

  _initMessage() async {
    await NotificationManager().onInitMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'fact',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
