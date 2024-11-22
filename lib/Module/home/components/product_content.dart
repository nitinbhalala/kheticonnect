import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kheti_connect/common/app_button.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/routes/routes_name.dart';
import 'package:sizer/sizer.dart';

class ProductBottomSheet extends StatelessWidget {
  /* final List data;
  String title; */
  // ProductBottomSheet({super.key, required this.data, required this.title});
  const ProductBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> productImages = [
      "https://m.media-amazon.com/images/I/614gbl-O98L._SX522_.jpg",
      "https://m.media-amazon.com/images/I/71-okZe5h1L._SX522_.jpg",
      "https://m.media-amazon.com/images/I/61XGPhtYGjL._SL1500_.jpg",
      "https://m.media-amazon.com/images/I/71MBWMdSE5L._SL1500_.jpg",
    ];

    return SizedBox(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(size: 4.h, Icons.cancel_outlined),
          ),
          SizedBox(height: 2.h),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white_color,
                borderRadius: BorderRadius.circular(8.w),
              ),
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 16.w,
                        height: 2.5.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.white_color,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: AppColors.grey_color.withOpacity(0.5),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.watch_later_outlined, size: 1.5.h),
                            SizedBox(width: 1.w),
                            AppText(
                              text: '8 mins',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 43.h,
                      width: double.infinity,
                      child: Swiper(
                        itemBuilder: (context, imgIndex) {
                          final image = productImages[imgIndex];
                          return Image.network(image);
                        },
                        autoplay: true,
                        itemCount: productImages.length,
                        indicatorLayout: PageIndicatorLayout.COLOR,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                            space: 2.w,
                            activeColor: AppColors.sShade_3,
                            color: AppColors.grey_color.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child:
                          Image.asset(AppAssets.share, height: 25, width: 50),
                    ),
                    SizedBox(height: 1.h),
                    AppText(
                      fontSize: 3.h,
                      text: "boAt Immortal 128 TWS Earbuds (Black Sabre)",
                      fontWeight: FontWeight.w300,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: SizedBox(
                        height: 12.h,
                        width: 25.w,
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.w),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2.w),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Boat_Logo.webp/800px-Boat_Logo.webp.png?20200726110408',
                              ),
                            ),
                          ),
                        ),
                      ),
                      title: AppText(text: 'boAt'),
                      subtitle: AppText(
                        text: 'Explore all product',
                        color: AppColors.green_color,
                      ),
                      trailing: const CircleAvatar(
                        backgroundColor: AppColors.white_color,
                        child: Icon(CupertinoIcons.arrow_right,
                            color: AppColors.sShade_1),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white_color,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: AppColors.grey_color.withOpacity(0.5),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppText(text: "1 unit"),
                                Row(
                                  children: [
                                    AppText(text: "₹799"),
                                    SizedBox(width: 2.w),
                                    AppText(
                                      text: "MRP",
                                      fontSize: 1.5.h,
                                      color: AppColors.grey_color,
                                    ),
                                    AppText(
                                      fontSize: 1.5.h,
                                      text: "₹ 3,499",
                                      color: AppColors.grey_color,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                    SizedBox(width: 2.w),
                                    Container(
                                      width: 16.w,
                                      height: 2.h,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: AppColors.blue_color,
                                        borderRadius:
                                            BorderRadius.circular(1.5.w),
                                      ),
                                      child: AppText(
                                        text: '77% OFF',
                                        fontSize: 1.2.h,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.white_color,
                                      ),
                                    ),
                                  ],
                                ),
                                AppText(
                                  fontSize: 1.5.h,
                                  color: AppColors.grey_color,
                                  text: "(includes of all taxes)",
                                  fontFamily: AppAssets.Roboto_Regular,
                                ),
                              ],
                            ),
                            AppButton(
                              width: 30.w,
                              radius: 2.w,
                              onPressed: () {
                                Get.toNamed(RoutesName.PAYMENT_SCREEN);
                              },
                              color: AppColors.green_color,
                              child: AppText(
                                text: 'Add to Cart',
                                color: AppColors.white_color,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
