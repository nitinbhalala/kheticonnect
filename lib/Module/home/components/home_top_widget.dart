import 'package:flutter/material.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/Module/home/components/home_search.dart';
import 'package:sizer/sizer.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.w),
              bottomRight: Radius.circular(15.w)),
          gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: AppColors.gradientColor)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: 'Delivery in',
                        fontSize: 3.h,
                      ),
                      SizedBox(height: 1.h),
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text: '8 minute',
                              fontSize: 4.h,
                              color: AppColors.secondary_color,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AppText(
                                  text: 'Home - Sushrut G, Star Homes',
                                  fontSize: 2.h,
                                  fontFamily: AppAssets.Roboto_Regular,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.secondary_color,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: 3.h,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    maxRadius: 8.w,
                    backgroundColor: AppColors.sShade_3,
                    child: Icon(
                      size: 5.h,
                      Icons.person,
                      color: AppColors.gradientColor[3],
                    ),
                  )
                ],
              ),
              SizedBox(height: 2.h),
              const HomeSearch(),
              SizedBox(height: 2.h),
              AppText(
                fontSize: 4.h,
                text: 'Welcome',
                fontWeight: FontWeight.w900,
                color: AppColors.brown_color,
                fontFamily: AppAssets.courget,
              ),
              AppText(
                fontSize: 2.h,
                color: AppColors.brown_color,
                fontFamily: AppAssets.Roboto_Bold,
                text: 'Order now to avail exciting offer',
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3.w),
                        child: Image.asset(
                            height: 10.h, fit: BoxFit.fill, AppAssets.grocery),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3.w),
                        child: Image.asset(
                            height: 10.h, fit: BoxFit.fill, AppAssets.grocery1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
