import 'dart:developer';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:push_noti/main.dart';
import 'package:push_noti/routes/app_router.gr.dart';

class DynamicLinkManagers {
  static final DynamicLinkManagers _singleton = DynamicLinkManagers._internal();

  factory DynamicLinkManagers() {
    return _singleton;
  }

  DynamicLinkManagers._internal();

  final FirebaseDynamicLinks _dynamicLinks = FirebaseDynamicLinks.instance;

  Future<void> instance() async {
    final PendingDynamicLinkData? initialLink =
        await _dynamicLinks.getInitialLink();

    await _onListen();

    if (initialLink == null) return;

    locator<AppRouter>().replace(const CarouselRoute());
  }

  Future<Uri> onBuildLink(String id) async {
    final parameters = DynamicLinkParameters(
      link: Uri.parse("https://techlink.com/$id"),
      uriPrefix: "https://techmobile.page.link",
      androidParameters: const AndroidParameters(
        packageName: "com.vinova.pushNotification",
        minimumVersion: 30,
      ),
      iosParameters: const IOSParameters(
        bundleId: "com.vinova.pushNotification",
        minimumVersion: "1.0.1",
      ),
    );

    final link = await _dynamicLinks.buildShortLink(
      parameters,
      shortLinkType: ShortDynamicLinkType.unguessable,
    );

    return link.shortUrl;
  }

  _onListen() async {
    try {
      _dynamicLinks.onLink.listen(
        (dynamicLinkData) {
          log(dynamicLinkData.link.path);
          _onNavigateToScreen();
        },
      );
    } catch (e) {
      log(e.toString());
    }
  }

  _onNavigateToScreen() {
    final router = locator<AppRouter>();
    router.push(const DetailRoute());
  }
}
