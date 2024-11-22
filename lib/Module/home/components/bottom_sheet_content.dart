import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/routes/routes_name.dart';
import 'package:sizer/sizer.dart';

class BottomSheetContent extends StatelessWidget {
  final List data;
  String title;
  BottomSheetContent({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
                size: 4.h, Icons.cancel_outlined, color: AppColors.sShade_3),
          ),
          SizedBox(height: 2.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white_color,
                borderRadius: BorderRadius.circular(8.w),
              ),
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
              child: Column(
                children: [
                  Divider(
                    endIndent: 40.w,
                    indent: 40.w,
                    thickness: 1.w,
                    color: AppColors.sShade_3,
                  ),
                  SizedBox(height: 1.h),
                  AppText(
                    text: title,
                    fontFamily: AppAssets.Roboto_Black,
                    color: AppColors.sShade_3,
                    fontSize: 2.5.h,
                  ),
                  SizedBox(height: 1.h),
                  Expanded(
                    child: GridView.builder(
                      itemCount: data.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 2.w,
                        mainAxisSpacing: 2.h,
                        crossAxisCount: 2,
                        childAspectRatio: 9 / 14,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 1.h),
                          decoration: BoxDecoration(
                            color: AppColors.white_color,
                            borderRadius: BorderRadius.circular(3.w),
                            border: Border.all(
                                color: AppColors.green_color.withOpacity(0.5)),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Column(
                                children: [
                                  AppText(
                                    text: data[index]['title'],
                                  ),
                                  AppText(
                                    text: data[index]['subTitle'],
                                    fontFamily: AppAssets.Roboto_Regular,
                                  ),
                                  SizedBox(height: 1.h),
                                  SizedBox(
                                    height: 16.h,
                                    width: 16.h,
                                    child: data[index]['images'].length == 1
                                        ? Image.asset(
                                            data[index]['images'][0],
                                            fit: BoxFit.fill,
                                          )
                                        : Swiper(
                                            autoplay: true,
                                            itemBuilder: (context, imgIndex) {
                                              final image = data[index]
                                                  ['images'][imgIndex];
                                              return Image.asset(image,
                                                  fit: BoxFit.fill);
                                            },
                                            indicatorLayout:
                                                PageIndicatorLayout.COLOR,
                                            itemCount:
                                                data[index]['images'].length,
                                            pagination: SwiperPagination(
                                              builder:
                                                  DotSwiperPaginationBuilder(
                                                space: 2.w,
                                                activeColor: AppColors.sShade_3,
                                                color: AppColors.grey_color
                                                    .withOpacity(0.6),
                                              ),
                                            ),
                                          ),
                                  ),
                                  SizedBox(height: 1.h),
                                  AppText(
                                    text: data[index]['price'],
                                  ),
                                  SizedBox(height: 1.h),
                                  SizedBox(
                                    width: 30.w,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 2,
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.green,
                                        side: const BorderSide(
                                            color: AppColors.green_color),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: () {
                                        Get.toNamed(RoutesName.PAYMENT_SCREEN);
                                      },
                                      child: AppText(
                                        text: 'ADD',
                                        color: AppColors.green_color,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                top: 2.5.h,
                                right: 1.5.w,
                                child: Container(
                                  height: 2.5.h,
                                  alignment: AlignmentDirectional.center,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.watch_later_outlined,
                                          size: 1.5.h),
                                      SizedBox(width: 1.w),
                                      AppText(
                                        text: '8 mins',
                                        fontFamily: AppAssets.Roboto_Thin,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 1.5.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
