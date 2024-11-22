import 'package:flutter/material.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/constants/global.dart';
import 'package:kheti_connect/Module/home/components/bottom_sheet_content.dart';
import 'package:kheti_connect/Module/home/components/product_content.dart';
import 'package:sizer/sizer.dart';

class RecentlyList extends StatelessWidget {
  const RecentlyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          child: AppText(
            text: 'Most Recently Used',
            fontSize: 3.5.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recentlyUsed.length,
                (index) {
                  String displayText;
                  if (index == 0) {
                    displayText = '+${milk.length - 3}';
                  } else if (index == 1) {
                    displayText = '+${vegetables.length - 3}';
                  } else {
                    displayText = '+${fruitList.length - 3}';
                  }
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        height: 15.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            color: AppColors.tShade_4.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(3.w)),
                        child: GridView.builder(
                          padding: EdgeInsets.symmetric(vertical: 0.5.h),
                          itemCount:
                              recentlyUsed[index]['images_list'].length + 1,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, mainAxisSpacing: 0),
                          itemBuilder: (context, gridIndex) {
                            if (gridIndex ==
                                recentlyUsed[index]['images_list'].length) {
                              return GestureDetector(
                                onTap: () {
                                  showModalBottomSheet<void>(
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.w)),
                                    scrollControlDisabledMaxHeightRatio: 8 / 9,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return BottomSheetContent(
                                        title: recentlyUsed[index]['title'],
                                        data: index == 0
                                            ? milk
                                            : index == 1
                                                ? vegetables
                                                : fruitList,
                                      );
                                    },
                                  );
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3.w),
                                  ),
                                  child: Center(
                                    child: AppText(
                                      text: displayText,
                                      color: AppColors.grey_color,
                                    ),
                                  ),
                                ),
                              );
                            }
                            return GestureDetector(
                              onTap: () {
                                showModalBottomSheet<void>(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.w),
                                  ),
                                  scrollControlDisabledMaxHeightRatio: 8 / 9,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const ProductBottomSheet();
                                  },
                                );
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.w)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.w),
                                  child: Image.asset(recentlyUsed[index]
                                      ['images_list'][gridIndex]),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 1.h),
                      AppText(
                        fontSize: 1.6.h,
                        color: AppColors.sShade_3,
                        fontWeight: FontWeight.w600,
                        text: recentlyUsed[index]['title'],
                        fontFamily: AppAssets.Roboto_Regular,
                      )
                    ],
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
