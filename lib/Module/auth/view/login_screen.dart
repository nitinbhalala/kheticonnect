import 'package:flutter/services.dart';
import 'package:kheti_connect/Module/auth/provider/login_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/common/app_button.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/common/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: LoginProvider(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Consumer<LoginProvider>(
            builder: (context, value, child) {
              return Form(
                key: value.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: ClipRRect(
                          child: Image.asset(
                        AppAssets.logo,
                        height: 25.h,
                      )),
                    ),
                    SizedBox(height: 2.h),
                    AppText(
                      text: 'Login',
                      fontSize: 4.h,
                      fontFamily: AppAssets.Roboto_Black,
                    ),
                    SizedBox(height: 3.h),
                    AppText(text: 'Phone Number'),
                    SizedBox(height: 1.h),
                    AppTextField(
                      labelText: 'Enter mobile number',
                      keyboardType: TextInputType.number,
                      controller: value.phoneNumberController,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      validator: (phoneNumber) {
                        if (phoneNumber == null || phoneNumber.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        if (phoneNumber.length != 10) {
                          return 'Phone number must be exactly 10 digits';
                        }
                        if (!RegExp(r'^[0-9]+$').hasMatch(phoneNumber)) {
                          return 'Phone number must contain only digits';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 4.h),
                    AppButton(
                      color: AppColors.gradientColor[0],
                      onPressed: () => value.loginForm(),
                      child:
                          AppText(text: 'Send', color: AppColors.white_color),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
