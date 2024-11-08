import 'package:confidence_reseller/core/routes/route_path.dart';
import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/custom_button/custom_button.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ChooseAccountType extends StatelessWidget {
  const ChooseAccountType({super.key});

  @override
  Widget build(BuildContext context) {
    final double totalHeight = context.height >= 790
        ? context.height + (context.height * .3)
        : context.height + (context.height * .4);

    return Scaffold(
        // Use a Container with gradient decoration as the background
        body: SingleChildScrollView(
      child: SizedBox(
        height: totalHeight, // Ensure Stack has enough height
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ///========================= Top Design ==========================

            gradientBackgroundWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.logo.image(width: 200.w),
                  CustomText(
                    top: 10.h,
                    text: AppStrings.entry,
                    color: AppColors.whiteColor,
                  )
                ],
              ),
              context: context,
            ),

            // ================== Premium Reseller Account Card =====================
            accountCard(
              top: context.height / 3.5,
              assetWidget: Assets.icons.premium.image(),
              context: context,
              title: AppStrings.resellerPro,
              price: "৳৭০০",
              description: AppStrings.premimumVipResigtasion,
            ),
            20.heightWidth,

            // ================== Free Reseller Account Card =====================

            accountCard(
              top: context.height >= 790
                  ? context.height / 1.3
                  : context.height / 1.22,
              assetWidget: Assets.icons.free.image(),
              context: context,
              title: AppStrings.normalReseller, // Change title if different
              price: AppStrings.free, // Change price if different
              description: AppStrings
                  .premimumVipResigtasion, // Change description if different
            ),
            30.heightWidth,
          ],
        ),
      ),
    ));
  }

  Widget accountCard({
    required BuildContext context,
    required String title,
    required Widget assetWidget,
    required String price,
    required String description,
    required double top,
  }) {
    return stackCardPosition(
      borderColor: AppColors.blackColor,
      cardHeight:
          context.height >= 790 ? context.height / 2.3 : context.height / 2,
      top: top,
      context: context,
      child: Column(
        children: [
          assetWidget,

          SizedBox(height: 10.h),
          CustomText(
            text: title,
            fontSize: Dimensions.getFontSizeLarge(context),
            color: AppColors.blackColor,
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.only(bottom: 20.h),
            color: AppColors.blueLightColor,
            padding: EdgeInsets.all(4.r),
            child: CustomText(
              color: AppColors.redColor,
              text: price,
              fontSize: Dimensions.getFontSizeSmall(context),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4.r),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.blackColor),
            ),
            child: CustomText(
              fontSize: Dimensions.getFontSizeDefault(context),
              textAlign: TextAlign.left,
              text: description,
              maxLines: 3,
            ),
          ),

          TextButton(
            onPressed: () {
              // Handle details tap
            },
            child: CustomText(
              text: AppStrings.details,
              color: AppColors.blueColor,
              fontSize: Dimensions.getFontSizeDefault(context),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 10.h),
          //=================== Register Button ==================
          CustomButton(
            onTap: () {
              context.pushNamed(RoutePath.signUp);
            },
            title: AppStrings.register,
          ),
        ],
      ),
    );
  }
}
