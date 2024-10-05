import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

/// ========================== This Custom Uses Gradient BackDround Color ==========================

Widget gradientBackgroundWidget(
        {required Widget child, required BuildContext context}) =>
    Container(
      height: context.height / 3,
      width: double.infinity,
      decoration: const BoxDecoration(gradient: AppColors.primaryGradientColor),
      child: child,
    );

/// ========================== This Custom Uses Stack Hover Effect ==========================
Widget stackCardPosition(
        {required Widget child,
        required BuildContext context,
        required double cardHeight}) =>
    Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: context.height / 3.5,
          left: 20, // Added to stretch from the left
          right: 20, // Added to stretch to the right
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            height: cardHeight,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.1),
                  blurRadius: 12, // Optional: Add blur for better visibility
                  offset: const Offset(
                      0, 4), // Optional: Add offset for shadow effect
                ),
              ],
            ),
            child: child,
          ),
        ),
      ],
    );

/// ========================== This Custom Uses Stack Hover Effect ==========================
Widget asteriskSignText(
        {required String title,
        double? fontSize,
        double top = 0,
        double bottom = 0}) =>
    Row(
      children: [
        CustomText(
          top: top,
          bottom: bottom,
          text: AppStrings.asterisk,
          color: AppColors.redColor,
        ),
        CustomText(
          top: top,
          bottom: bottom,
          text: title,
          fontSize: fontSize,
        )
      ],
    );
