import 'package:flutter/material.dart';
import 'package:kheti_connect/common/app_button.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/Module/auth/components/otp_filed.dart';
import 'package:kheti_connect/Module/auth/provider/otp_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OtpProvider(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          child: Consumer<OtpProvider>(
            builder: (context, value, child) {
              return Form(
                key: value.otpKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter the OTP sent to your mobile number",
                      style: TextStyle(fontSize: 14.sp),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4.h),
                    OtpTextField(controller: value.otpController),
                    SizedBox(height: 4.h),
                    AppButton(
                      onPressed: () {
                        value.otpVerify();
                      },
                      color: AppColors.gradientColor[0],
                      child: AppText(
                        text: "Verify",
                        color: AppColors.white_color,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: AppColors.green_color,
                            content: AppText(
                              text: 'OTP Resend Successful!',
                              color: AppColors.white_color,
                            ),
                          ),
                        );
                      },
                      child: AppText(text: "Resend OTP"),
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
