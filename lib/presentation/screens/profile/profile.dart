import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/helper/network_image/network_image.dart';
import 'package:confidence_reseller/presentation/screens/profile/controller/profile_controller.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text_field/custom_text_field.dart';
import 'package:confidence_reseller/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/app_const/app_const.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ProfileController profileController = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomSideDrawer(),
      bottomNavigationBar: const NavBarScreen(currentIndex: 3),
      body: Column(
        children: [
          Container(
            decoration:
                const BoxDecoration(gradient: AppColors.primaryGradientColor),
            height: MediaQuery.of(context).size.height / 2.5,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                    right: 10.w,
                    top: 20.h,
                    child: Row(
                      children: [
                        Assets.icons.premium.image(width: 26.r),
                        const CustomText(
                          left: 10,
                          text: AppStrings.resellerPro,
                          color: AppColors.whiteColor,
                        ),
                      ],
                    )),

                /// =========================== Image ==========================

                Positioned(
                    top: 60.h,
                    child: Stack(
                      children: [
                        Container(
                            padding: EdgeInsets.all(8.r),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.whiteColor,
                            ),
                            child: CustomNetworkImage(
                                boxShape: BoxShape.circle,
                                imageUrl: AppConstants.onlineImage,
                                height: 120.r,
                                width: 120.r)),
                        Positioned(
                            right: 10,
                            bottom: 5,
                            child: Assets.icons.gallaryImg.image())
                      ],
                    )),

                /// =========================== Reseller Info ==========================
                Positioned(
                    top: 200.h,
                    child: Column(
                      children: [
                        const CustomText(
                          text: "রিসেলার নাম",
                          color: AppColors.whiteColor,
                        ),
                        const CustomText(
                          text: "Business Code: 1245678",
                          color: AppColors.whiteColor,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.r, vertical: 6.w),
                          color: AppColors.greenLightColor,
                          child: Row(
                            children: [
                              const CustomText(
                                right: 10,
                                text: AppStrings.editYourProfile,
                                color: AppColors.whiteColor,
                              ),

                              /// ======================= Edit Profile Button ========================
                              GestureDetector(
                                  onTap: () {},
                                  child: Assets.icons.editProfile.svg())
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          20.heightWidth,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Column(
              children: [
                /// ========================== Phone Number Field =============================
                CustomTextField(
                  textEditingController:
                      profileController.phoneController.value,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor)),
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(16.r),
                      child: Assets.icons.phone.svg()),
                  border: const OutlineInputBorder(),
                ),
                20.heightWidth,

                /// ========================== Address Field =============================
                CustomTextField(
                  maxLines: 2,
                  textEditingController:
                      profileController.addressController.value,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor)),
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(16.r),
                      child: Assets.icons.location.svg()),
                  border: const OutlineInputBorder(),
                ),
                20.heightWidth,

                /// ========================== Shop Info =============================
                CustomTextField(
                  textEditingController:
                      profileController.shopeAddressController.value,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor)),
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(16.r),
                      child: Assets.icons.location.svg()),
                  border: const OutlineInputBorder(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
