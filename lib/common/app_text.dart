import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:sizer/sizer.dart';

class AppText extends StatelessWidget {
  String text;
  String? fontFamily;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  TextStyle? style;
  TextDecoration? decoration;

  AppText({
    super.key,
    this.style,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.decoration,
    this.fontFamily,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          TextStyle(
              fontSize: fontSize ?? 2.h,
              fontWeight: fontWeight,
              fontFamily: fontFamily ?? AppAssets.Roboto_Black,
              decoration: decoration ?? TextDecoration.none,
              color: color ?? AppColors.sShade_3,
              decorationColor: AppColors.grey_color,
              decorationThickness: 2),
    );
  }
}
