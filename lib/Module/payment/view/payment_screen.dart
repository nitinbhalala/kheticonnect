import 'package:flutter/material.dart';
import 'package:kheti_connect/common/app_text.dart';
import 'package:kheti_connect/constants/app_assets.dart';
import 'package:kheti_connect/constants/app_color.dart';
import 'package:kheti_connect/Module/payment/components/payment_style.dart';
import 'package:sizer/sizer.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => PaymentScreenState();
}

class PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      appBar: AppBar(
        backgroundColor: AppColors.white_color,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: AppText(
          text: 'Payment setting',
          fontWeight: FontWeight.w500,
          color: AppColors.secondary_color,
          fontFamily: AppAssets.Roboto_Thin,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(text: 'Cards', fontSize: 2.5.h),
                        SizedBox(height: 1.h),
                        PaymentStyle(
                          addTitle: 'Add',
                          image: AppAssets.card,
                          title: 'Add credit or debit cards',
                        ),
                        SizedBox(height: 1.h),
                        PaymentStyle(
                          addTitle: 'Add',
                          title: 'Add Card',
                          image: AppAssets.sodexo,
                        ),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 1,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: AppText(
                          text: 'PAY BY ANY UPI APP',
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: PaymentStyle(
                          title: 'Google Pay UPI',
                          image: AppAssets.google_pay,
                          isDivider: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: PaymentStyle(
                          title: 'PhonePe UPI',
                          image: AppAssets.phonepe,
                          isDivider: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: PaymentStyle(
                          title: 'Paytm UPI',
                          image: AppAssets.paytm,
                          isDivider: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: PaymentStyle(
                          isDivider: true,
                          fit: BoxFit.fill,
                          title: 'Slice UPI',
                          image: AppAssets.slice,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: PaymentStyle(
                          isDivider: true,
                          title: 'Make My Trip UPI',
                          image: AppAssets.make_my_trip,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: PaymentStyle(
                          addTitle: 'ADD',
                          isDivider: true,
                          title: 'Add New UPI',
                          image: AppAssets.upi,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 1,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          'Wallets',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 8.h,
                              width: 22.w,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                ),
                                child: Image.asset(
                                  fit: BoxFit.fill,
                                  AppAssets.amazon_pay,
                                ),
                              ),
                            ),
                            AppText(
                              fontSize: 1.6.h,
                              text: 'Amazon Pay Balance',
                              fontWeight: FontWeight.w500,
                              fontFamily: AppAssets.Roboto_Thin,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 2),
                              width: 40,
                              height: 20,
                              alignment: AlignmentDirectional.center,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: AppText(
                                text: 'New',
                                fontSize: 1.6.h,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppAssets.Roboto_ThinItalic,
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white),
                              onPressed: () {},
                              child: AppText(
                                text: 'Link',
                                color: Colors.green,
                                fontFamily: AppAssets.Roboto_Thin,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
