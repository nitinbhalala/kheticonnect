import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kheti_connect/routes/routes_name.dart';

class OtpProvider extends ChangeNotifier {
  final GlobalKey<FormState> otpKey = GlobalKey<FormState>();

  final TextEditingController otpController = TextEditingController();

  void otpVerify() {
    if (otpKey.currentState?.validate() ?? false) {
      Get.offAllNamed(RoutesName.HOME_SCREEN);
    } else {
      print('Validation Failed: Please enter a valid OTP');
    }
    notifyListeners();
  }
}
