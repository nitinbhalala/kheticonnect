import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/Splash%20Screen/Provider/splash_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: SplashProvider(),
      child: Scaffold(
        backgroundColor: AppColors.white_color,
        body: Consumer<SplashProvider>(
          builder: (context, value, child) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: AppColors.gradientColor),
              ),
              child: Center(
                child: Image.asset(AppAssets.logo, height: 25.h),
              ),
            );
          },
        ),
      ),
    );
  }
}
