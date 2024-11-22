import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kheti_connect/routes/routes_name.dart';

class LoginProvider extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();
  void loginForm() {
    if (formKey.currentState?.validate() ?? false) {
      Get.toNamed(RoutesName.OTP_SCREEN);
    } else {
      print('------Missing validation----');
    }
    notifyListeners();
  }
}
