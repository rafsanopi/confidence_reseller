import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: AppColors.primaryGradientColor,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.logo.image(width: 200.w),
            CustomText(
              top: 16.h,
              fontWeight: FontWeight.w500,
              text: AppStrings.welcome,
              color: AppColors.whiteColor,
              fontSize: Dimensions.getFontSizeOverLarge(context),
            ),
            CustomText(
              text: AppStrings.tosuccesswithconfidence,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.getFontSizeExtraLarge(context),
            ),
          ],
        ),
      ),
    ));
  }
}
