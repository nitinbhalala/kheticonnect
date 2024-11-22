import 'package:flutter/material.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/constants/global.dart';
import 'package:kheti_connect/Module/home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          child: AppText(
            text: 'Categories',
            fontSize: 3.5.h,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                categories.length,
                (index) {
                  return Consumer<HomeProvider>(
                    builder: (context, provider, child) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              provider.onIndexChange(index);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 1.w),
                              height: 8.h,
                              width: 8.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.w),
                                  color: provider.selectedCategoryIndex == index
                                      ? AppColors.gradientColor[0]
                                      : AppColors.white_color,
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColors.grey_color
                                            .withOpacity(0.3),
                                        blurRadius: 10)
                                  ]),
                              child: Image.asset(categories[index]['image'],
                                  scale: 12),
                            ),
                          ),
                          SizedBox(height: 1.w),
                          AppText(
                            text: categories[index]['title'],
                            fontFamily: AppAssets.Roboto_Regular,
                            fontWeight: FontWeight.w600,
                            color: provider.selectedCategoryIndex == index
                                ? AppColors.gradientColor[0]
                                : AppColors.sShade_3,
                            fontSize: 1.6.h,
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
