import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kheti_connect/routes/routes_name.dart';

class SplashProvider extends ChangeNotifier {
  SplashProvider() {
    navigate();
  }

  void navigate() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed(RoutesName.LOGIN);
      },
    );
  }
}
