import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text_field/custom_text_field.dart';
import 'package:confidence_reseller/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderList extends StatelessWidget {
  OrderList({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List manuList = [
    AppStrings.all,
    AppStrings.pending,
    AppStrings.processing,
    AppStrings.shipping,
    AppStrings.complete,
    AppStrings.returnn,
    AppStrings.rejected,
  ];

  final selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const CustomSideDrawer(),
        bottomNavigationBar: const NavBarScreen(currentIndex: 0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// ========================= Custom App Bar =========================

              CustomAppBar(
                scaffoldKey: scaffoldKey,
              ),

              //// ============================ Search Button ===========================
              CustomTextField(
                horizontal: 20.w,
                hintText: AppStrings.customerNamePhoneOrderId,
                border: const OutlineInputBorder(),
              ),
              20.heightWidth,

              /// ==========================Top bar Menu Details ===========================
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    manuList.length,
                    (index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10.w, left: 10.w),
                        decoration: BoxDecoration(
                            gradient: selectedIndex == index
                                ? AppColors.primaryGradientColor
                                : null,
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(
                                color: selectedIndex == index
                                    ? Colors.transparent
                                    : AppColors.blackColor)),
                        padding: EdgeInsets.symmetric(
                            vertical: 6.h, horizontal: 15.w),
                        child: CustomText(
                          fontSize: Dimensions.getFontSizeSemiSmall(context),
                          text: manuList[index],
                          color: selectedIndex == index
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                        ),
                      );
                    },
                  ),
                ),
              ),

              /// ========================== Product List ===========================

              ...List.generate(
                manuList.length,
                (index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    padding: EdgeInsets.only(top: 10.r),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          color: AppColors.blackColor.withOpacity(.2),
                          spreadRadius: 5)
                    ]),
                    child: Row(
                      children: [
                        //// =========================== Image ========================
                        Assets.images.product2.image(
                            height: 100, width: 120, fit: BoxFit.fitHeight),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CustomText(
                                  text: "রবিউল ইসলাম",
                                  fontSize:
                                      Dimensions.getFontSizeSmall(context),
                                ),
                                30.heightWidth,
                                CustomText(
                                  text: "ক্রয় মূল্য: ৳৭০০",
                                  fontSize:
                                      Dimensions.getFontSizeSmall(context),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomText(
                                  text: "ID: 458795",
                                  fontSize:
                                      Dimensions.getFontSizeSmall(context),
                                ),
                                30.heightWidth,
                                CustomText(
                                  text: "বিক্রয় মূল্য: ৳১০০০",
                                  fontSize:
                                      Dimensions.getFontSizeSmall(context),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomText(
                                  text: "1Sep 2024",
                                  fontSize:
                                      Dimensions.getFontSizeSmall(context),
                                ),
                                30.heightWidth,
                                CustomText(
                                  text: "আমার প্রফিট: ৳৩০০",
                                  fontSize:
                                      Dimensions.getFontSizeSmall(context),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomText(
                                  color: AppColors.pinkColor,
                                  fontWeight: FontWeight.w500,
                                  text: "Processing",
                                  fontSize:
                                      Dimensions.getFontSizeSmall(context),
                                ),
                                30.heightWidth,
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6.w, vertical: 2.h),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.primaryColor)),
                                  child: Row(
                                    children: [
                                      CustomText(
                                        text: AppStrings.details,
                                        color: AppColors.primaryColor,
                                        fontSize: Dimensions.getFontSizeSmall(
                                            context),
                                      ),
                                      Assets.icons.details.svg()
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
          
          
            ],
          ),
        ));
  }
}
