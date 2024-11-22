import 'package:flutter/material.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class OtpTextField extends StatelessWidget {
  TextEditingController? controller;
  OtpTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context);
    return PinCodeTextField(
      length: 4,
      autoFocus: true,
      appContext: context,
      controller: controller,
      animationType: AnimationType.slide,
      pinTheme: PinTheme(
        fieldWidth: 15.w,
        fieldHeight: 7.h,
        shape: PinCodeFieldShape.box,
        errorBorderColor: Colors.red,
        activeColor: AppColors.gradientColor[0],
        inactiveColor: AppColors.grey_color,
        selectedColor: AppColors.gradientColor[0],
        borderRadius: BorderRadius.circular(3.w),
        activeFillColor: AppColors.gradientColor[0],
        selectedFillColor: AppColors.gradientColor[0],
        disabledColor: themeColor.colorScheme.surface,
        inactiveFillColor: themeColor.colorScheme.surface,
      ),
      keyboardType: TextInputType.number,
      animationDuration: const Duration(milliseconds: 300),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the OTP';
        }
        if (value.length != 4) {
          return 'OTP must be 4 digits';
        }
        if (!RegExp(r'^\d+$').hasMatch(value)) {
          return 'OTP must contain only digits';
        }
        return null;
      },
      onCompleted: (value) {
        print("Completed OTP: $value");
        FocusScope.of(context).unfocus(); // Dismiss the keyboard
      },
    );
  }
}
