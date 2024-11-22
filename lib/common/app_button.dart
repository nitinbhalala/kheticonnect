import 'package:flutter/material.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  double? height;
  double? width;
  double? radius;
  dynamic child;
  Color? color;
  Color? shadoCcolor;
  VoidCallback? onPressed;

  AppButton(
      {super.key,
      required this.child,
      this.height,
      this.width,
      this.radius,
      this.color,
      this.shadoCcolor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 6.h,
        width: width ?? 90.w,
        decoration: BoxDecoration(
          color: color ?? AppColors.pShade_2,
          borderRadius: BorderRadius.circular(radius ?? 3.w),
          boxShadow: [
            BoxShadow(
                color: shadoCcolor ?? AppColors.primary_color.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 2))
          ],
        ),
        child: Center(child: child),
      ),
    );
  }
}
