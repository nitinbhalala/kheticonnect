import 'package:flutter/material.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:sizer/sizer.dart';

class PaymentStyle extends StatelessWidget {
  String title;
  BoxFit? fit;
  String image;
  bool? isDivider;
  String? addTitle = '';
  PaymentStyle({
    this.fit,
    super.key,
    this.addTitle,
    this.isDivider,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            height: 10.h,
            width: 18.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3.w),
              border: Border.all(color: AppColors.sShade_3.withOpacity(0.2)),
            ),
            child: Image.asset(image, height: 2.h, fit: fit),
          ),
          title: AppText(
            text: title,
            fontSize: 1.6.h,
            fontWeight: FontWeight.w500,
            fontFamily: AppAssets.Roboto_Thin,
            color: AppColors.secondary_color,
          ),
          trailing: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            child: AppText(
              text: addTitle ?? '',
              color: AppColors.green_color,
              fontFamily: AppAssets.Roboto_Thin,
            ),
          ),
        ),
        isDivider == true
            ? Divider(endIndent: 2.w, indent: 2.w)
            : const SizedBox()
      ],
    );
  }
}
