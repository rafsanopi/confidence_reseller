import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WithdrawHistory extends StatelessWidget {
  WithdrawHistory({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomSideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ========================= Custom App Bar =========================

            CustomAppBar(
              scaffoldKey: scaffoldKey,
            ),

            //// ============================ Header Title ===============================

            title(
                // ignore: deprecated_member_use_from_same_package
                icon:
                    Assets.icons.moneyWithdrow.svg(color: AppColors.blackColor),
                title: AppStrings.withdrawHistory),

            ...List.generate(
              10,
              (index) {
                return Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.skyColor)),
                  padding: EdgeInsets.all(20.r),
                  child: Column(
                    children: [
                      /// =============================== উত্তোলনের পরিমাণ =================================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "উত্তোলনের পরিমাণ:",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                              CustomText(
                                left: 10.w,
                                text: "(-৪০) ২০০০৳",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                            ],
                          ),
                          CustomText(
                            color: AppColors.primaryColor,
                            left: 10.w,
                            text: "(Paid)",
                            fontSize: Dimensions.getFontSizeSmall(context),
                          ),
                        ],
                      ),
                      4.heightWidth,

                      /// =============================== একাউন্ট =================================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "একাউন্ট:",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                              CustomText(
                                left: 10.w,
                                text: "(Bkash) 01235478634",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                      4.heightWidth,

                      /// =============================== উত্তোলনের ধরন =================================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "উত্তোলনের ধরন:",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                              CustomText(
                                left: 10.w,
                                text: "ইনস্ট্যান্ট পেমেন্ট",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                      4.heightWidth,

                      /// =============================== ট্রানজেকশন আইডি =================================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "ট্রানজেকশন আইডি:",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                              CustomText(
                                left: 10.w,
                                text: "21547896",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                      4.heightWidth,

                      /// =============================== তারিখ =================================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "তারিখ:",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                              CustomText(
                                left: 10.w,
                                text: "1Sep 2024 12:14:34",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
