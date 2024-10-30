import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomSideDrawer(),
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ========================= Custom App Bar =========================

            CustomAppBar(
              scaffoldKey: scaffoldKey,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                padding: EdgeInsets.all(10.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.notification
                        // ignore: deprecated_member_use_from_same_package
                        .svg(color: AppColors.blackColor),
                    const CustomText(
                      text: AppStrings.notification,
                      left: 10,
                    )
                  ],
                ),
              ),
            ),

            ...List.generate(
              5,
              (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
                  padding: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primaryColor)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              /// ======================= Notification Icon =============================
                              Assets.icons.orderShipping.svg(),

                              // ============================ Title ==========================
                              const CustomText(
                                left: 10,
                                text: "শিপিং অর্ডার",
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          // ============================ Message ==========================
                          CustomText(
                            text: "10m ago",
                            fontSize: Dimensions.getFontSizeSmall(context),
                          )
                        ],
                      ),

                      // ============================ Message ==========================
                      CustomText(
                        maxLines: 3,
                        left: 20,
                        top: 8,
                        textAlign: TextAlign.left,
                        text:
                            "অভিনন্দন! সোহেল রানা অর্ডারটি ডেলিভারি সম্পূর্ণ হয়েছে অর্ডার প্রফিটঃ ২০০ টাকা",
                        fontSize: Dimensions.getFontSizeSmall(context),
                      )
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
