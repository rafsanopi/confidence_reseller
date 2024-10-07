import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.height = 44,
      this.width = double.maxFinite,
      required this.onTap,
      this.title = "",
      this.marginVerticel = 0,
      this.marginHorizontal = 0,
      // this.fillColor = AppColors.primaryColor,
      this.textColor = AppColors.whiteColor,
      this.gradient = AppColors.primaryGradientColor,
      this.borderColor = Colors.transparent});

  final double height;
  final double width;
  //final Color fillColor;
  final Color borderColor;

  final Color textColor;

  final VoidCallback onTap;

  final String title;
  final Gradient gradient;

  final double marginVerticel;
  final double marginHorizontal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: marginVerticel, horizontal: marginHorizontal),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(8.r),
            gradient: gradient),
        child: CustomText(
            fontWeight: FontWeight.w500,
            color: textColor,
            textAlign: TextAlign.center,
            text: title),
      ),
    );
  }
}
