import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/presentation/screens/home/home_controller/home_controller.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomSideDrawer(),
      bottomNavigationBar: const NavBarScreen(currentIndex: 0),
      body: Column(
        children: [
          /// ========================= Custom App Bar =========================

          CustomAppBar(
            scaffoldKey: scaffoldKey,
          ),

          /// =========================== Banner =======================
          Assets.images.banner1.image(
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 4),

          /// ======================== Social Link Box =============================

          Container(
            margin: EdgeInsets.all(20.r),
            padding: EdgeInsets.all(10.r),
            decoration:
                BoxDecoration(border: Border.all(color: AppColors.blackColor)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  bottom: 8.h,
                  text: AppStrings.socialLink,
                  fontSize: Dimensions.getFontSizeDefault(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.icons.fb.image(),
                    Assets.icons.yt.image(),
                    Assets.icons.whatsApp.image(),
                    Assets.icons.telegram.image(),
                  ],
                )
              ],
            ),
          ),

          /// ======================== Notice Board =============================

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.r),
            padding: EdgeInsets.all(10.r),
            height: MediaQuery.of(context).size.height / 8,
            decoration: const BoxDecoration(
                gradient: AppColors.blueGradientColor,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Row(
                  children: [
                    Assets.icons.notificationOrange.svg(),
                    CustomText(
                      maxLines: 2,
                      fontSize: Dimensions.getFontSizeDefault(context),
                      left: 8.w,
                      text: AppStrings.noticeBoard,
                      color: AppColors.whiteColor,
                    )
                  ],
                ),
                Expanded(
                  child: CustomText(
                    top: 8.h,
                    textAlign: TextAlign.left,
                    fontSize: Dimensions.getFontSizeSmall(context),
                    maxLines: 2,
                    left: 8.w,
                    text: AppStrings.varifyProcess,
                    color: AppColors.whiteColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(
                      fontSize: Dimensions.getFontSizeSmall(context),
                      text: AppStrings.moredetails,
                      color: AppColors.orangeColor,
                    ),
                  ],
                )
              ],
            ),
          ),

          /// ======================== Main Card Box's =============================

          Expanded(
              child: GridView.builder(
            padding: EdgeInsets.all(20.r),
            itemCount: homeController.homeItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.6.r,
                crossAxisSpacing: 12,
                mainAxisSpacing: 24,
                crossAxisCount: 5),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  debugPrint("INDEX ==========>>>>>>>> $index");
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(14.r),
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                blurStyle: BlurStyle.outer,
                                blurRadius: 10,
                                spreadRadius: 4,
                                color: AppColors.blackColor.withOpacity(.25))
                          ],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.r),
                              bottomLeft: Radius.circular(8.r))),
                      child: homeController.homeItems[index][AppStrings.icon],
                    ),
                    CustomText(
                        top: 10.h,
                        maxLines: 2,
                        fontSize: Dimensions.getFontSizeSmall(context),
                        text: homeController.homeItems[index][AppStrings.text])
                  ],
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
