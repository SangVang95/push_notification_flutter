import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'detail_page.dart';
import 'main.dart';

// https://pub.dev/packages/firebase_messaging/example
// https://firebase.google.com/docs/cloud-messaging/flutter/client

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("Handling a background message: ${message.messageId}");
}

class NotificationManager {
  static final NotificationManager _singleton = NotificationManager._internal();

  factory NotificationManager() {
    return _singleton;
  }

  NotificationManager._internal();

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  late final FirebaseMessaging _firebaseMessaging;

  AndroidNotificationChannel aChannel = const AndroidNotificationChannel(
    'high_importance_channel_a', // id
    'High Importance Notifications_a', // title
    description:
        'This a channel is used for important notifications.', // description
    importance: Importance.high,
  );

  AndroidNotificationChannel bChannel = const AndroidNotificationChannel(
    'high_importance_channel_b', // id
    'High Importance Notifications_b', // title
    description:
        'This b channel is used for important notifications.', // description
    importance: Importance.high,
  );

  Future<void> instance() async {
    try {
      await _init();
      await _setupFcmToken();
      await _requestPermission();
      await _setupLocalNotification();
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _init() async {
    await Firebase.initializeApp();

    _firebaseMessaging = FirebaseMessaging.instance;

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(aChannel);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(bChannel);

    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen(_onListen);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  onInitMessage() async {
    RemoteMessage? initialMessage =
        await _firebaseMessaging.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }
  }

  _onListen(RemoteMessage message) {
    if (Platform.isAndroid) {
      final title = message.notification?.title ?? '';
      final body = message.notification?.body ?? '';
      final payload = jsonEncode(message.data);
      _showNotification(title, body, payload);
    }
  }

  _handleMessage(RemoteMessage message) {
    log('payload: ${message.data}');
    if (message.data['route'] != null) {
      Navigator.of(globalKey.currentContext!).push(
        MaterialPageRoute(
          builder: (_) {
            return const DetailPage();
          },
        ),
      );
    }
  }

  _setupLocalNotification() async {
    if (Platform.isAndroid) {
      var initializationSettingsAndroid =
          const AndroidInitializationSettings('@mipmap/ic_launcher');

      var initializationSettings =
          InitializationSettings(android: initializationSettingsAndroid);

      await _flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: (details) {
          log(details.payload ?? '');
          final payload = jsonDecode(details.payload ?? '');
          final remoteMessage = RemoteMessage(data: payload);
          _handleMessage(remoteMessage);
        },
      );
    }
  }

  _showNotification(
    String title,
    String body,
    String payload,
  ) async {
    final details = AndroidNotificationDetails(
      aChannel.id,
      aChannel.name,
      channelDescription: aChannel.description,
      importance: Importance.max,
      priority: Priority.high,
    );

    NotificationDetails notificationDetails =
        NotificationDetails(android: details);

    await _flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      notificationDetails,
      payload: payload,
    );
  }

  _setupFcmToken() async {
    final fcmToken = await _firebaseMessaging.getToken();

    log(fcmToken.toString());

    _firebaseMessaging.onTokenRefresh.listen((fcmToken) {
      log(fcmToken.toString());
    }).onError((err) {
      log(err.toString());
    });
  }

  _requestPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    log(settings.authorizationStatus.toString());
  }
}
