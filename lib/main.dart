import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kheti_connect/constants/app_string.dart';
import 'package:kheti_connect/routes/routes_name.dart';
import 'package:kheti_connect/routes/routes_navigation.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: AppString.app_name,
          themeMode: ThemeMode.light,
          initialRoute: RoutesName.SPLASH,
          getPages: RouteNavigation.routes,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: false),
        );
      },
    );
  }
}
