import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:sizer/sizer.dart';

class AppTextField extends StatelessWidget {
  final String? labelText;
  final Widget? suffixIcon;
  TextEditingController? controller;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;

  AppTextField({
    super.key,
    this.labelText,
    this.suffixIcon,
    this.keyboardType,
    this.onChanged,
    this.controller,
    this.validator,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        color: AppColors.white_color,
        boxShadow: [
          BoxShadow(color: AppColors.sShade_3.withOpacity(0.2), blurRadius: 2)
        ],
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        style: TextStyle(
          color: AppColors.sShade_3,
          fontFamily: AppAssets.Roboto_Thin,
          fontSize: 2.h,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: AppColors.sShade_3,
        validator: validator,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          border: InputBorder.none,
          hintText: labelText ?? '',
          hintStyle: const TextStyle(
            color: AppColors.grey_color,
          ),
        ),
      ),
    );
  }
}
