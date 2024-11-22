import 'package:get/get.dart';
import 'package:kheti_connect/Splash%20Screen/view/splash_screen.dart';
import 'package:kheti_connect/routes/routes_name.dart';
import 'package:kheti_connect/Module/auth/view/login_screen.dart';
import 'package:kheti_connect/Module/auth/view/otp_screen.dart';
import 'package:kheti_connect/Module/home/view/home_screen.dart';
import 'package:kheti_connect/Module/payment/view/payment_screen.dart';

class RouteNavigation {
  static final routes = [
    GetPage(
      name: RoutesName.SPLASH,
      transition: Transition.size,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RoutesName.LOGIN,
      transition: Transition.rightToLeft,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RoutesName.OTP_SCREEN,
      page: () => const OtpScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: RoutesName.HOME_SCREEN,
      page: () => const HomeScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: RoutesName.PAYMENT_SCREEN,
      transition: Transition.fadeIn,
      page: () => const PaymentScreen(),
    ),
  ];
}
