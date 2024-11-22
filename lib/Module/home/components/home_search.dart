import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/constants/app_assets.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      height: 6.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white_color,
          borderRadius: BorderRadius.circular(6.w)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            style: TextStyle(
              color: AppColors.sShade_3,
              fontFamily: AppAssets.Roboto_Thin,
              fontSize: 2.h,
              fontWeight: FontWeight.w600,
            ),
            cursorColor: AppColors.sShade_3,
            decoration: InputDecoration(
              hintText: 'search "Chocolate"',
              hintStyle: TextStyle(
                color: AppColors.grey_color,
                fontFamily: AppAssets.Roboto_Regular,
                fontSize: 2.h,
              ),
              icon: Icon(
                Icons.search,
                size: 4.h,
                color: AppColors.sShade_3,
              ),
              border: InputBorder.none,
            ),
          )),
          SizedBox(width: 1.w),
          Container(
            height: 4.h,
            width: 0.3.w,
            color: AppColors.secondary_color,
          ),
          SizedBox(width: 2.w),
          Icon(Icons.mic_rounded, size: 4.h)
        ],
      ),
    );
  }
}
