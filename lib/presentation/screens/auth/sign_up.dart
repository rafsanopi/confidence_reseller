import 'package:confidence_reseller/core/routes/route_path.dart';
import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/custom_button/custom_button.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text_field/custom_text_field.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double totalHeight = context.height * 2 - (context.height / 4);
    return Scaffold(
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
                      text: AppStrings.chooseYourAccount,
                      color: AppColors.whiteColor,
                    )
                  ],
                ),
                context: context,
              ),

              stackCardPosition(
                context: context,
                top: context.height / 3.5,
                cardHeight: totalHeight,
                //  context.height / 3.5 +
                //     (context.height - (context.height / 3)),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Assets.icons.premiumLogo.image(),
                        CustomText(
                          left: 5.w,
                          text: AppStrings.premium,
                          fontSize: Dimensions.getFontSizeSmall(context),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          top: 5.h,
                          text: AppStrings.registrasionPage,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),

                    /// ========================= Name Input Field ===========================
                    asteriskSignText(
                        title: AppStrings.fullname,
                        fontSize: Dimensions.getFontSizeLarge(context)),

                    const CustomTextField(
                      hintText: AppStrings.enterYourName,
                    ),
                    20.heightWidth,

                    /// ========================= Phone Input Field ===========================
                    asteriskSignText(
                        title: AppStrings.mobileNumber,
                        fontSize: Dimensions.getFontSizeLarge(context)),

                    const CustomTextField(
                      hintText: AppStrings.enterYourPhoneNumber,
                    ),

                    20.heightWidth,

                    /// ========================= Website Or FbPage Input Field ===========================
                    asteriskSignText(
                        title: AppStrings.yourWebsiteOr,
                        fontSize: Dimensions.getFontSizeLarge(context)),

                    const CustomTextField(
                      hintText: AppStrings.nameOrLink,
                    ),

                    20.heightWidth,

                    /// ========================= District Input Field ===========================
                    asteriskSignText(
                        title: AppStrings.districtName,
                        fontSize: Dimensions.getFontSizeLarge(context)),

                    const CustomTextField(
                      hintText: AppStrings.districtName,
                    ),
                    20.heightWidth,

                    /// ========================= Thana Input Field ===========================
                    asteriskSignText(
                        title: AppStrings.thanaName,
                        fontSize: Dimensions.getFontSizeLarge(context)),

                    const CustomTextField(
                      hintText: AppStrings.thanaName,
                    ),

                    20.heightWidth,

                    /// ========================= Address Input Field ===========================
                    asteriskSignText(
                        title: AppStrings.address,
                        fontSize: Dimensions.getFontSizeLarge(context)),

                    const CustomTextField(
                      hintText: AppStrings.enterYourAddress,
                    ),

                    20.heightWidth,

                    /// ========================= Password Input Field ===========================
                    asteriskSignText(
                        title: AppStrings.passwordMinimum,
                        fontSize: Dimensions.getFontSizeLarge(context)),

                    const CustomTextField(
                      hintText: AppStrings.password,
                    ),

                    20.heightWidth,

                    /// ========================= Reffer Code Input Field ===========================
                    asteriskSignText(
                        title: AppStrings.rafelCode,
                        fontSize: Dimensions.getFontSizeLarge(context)),

                    const CustomTextField(
                      textInputAction: TextInputAction.done,
                      hintText: AppStrings.rafelCode,
                    ),

                    /// ======================== I Agree With ===========================
                    10.heightWidth,
                    Row(
                      children: [
                        Checkbox(
                          activeColor: AppColors.primaryColor,
                          value: true,
                          onChanged: (value) {},
                        ),
                        CustomText(
                          color: AppColors.redColor,
                          text: AppStrings.iAgreeWithThe,
                          fontSize: Dimensions.getFontSizeSmall(context),
                        )
                      ],
                    ),
                    20.heightWidth,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const CustomText(
                                color: AppColors.blueColor,
                                text: AppStrings.rulesAndRegulation)),
                      ],
                    ),

                    // =================== Submit/Sign Up Button ===================
                    CustomButton(
                      marginVerticel: 20.h,
                      onTap: () {},
                      title: AppStrings.submitNow,
                    ),

                    /// ========================== Divider ==========================
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(),
                        ),
                        CustomText(
                          left: 10.w,
                          right: 10.w,
                          text: AppStrings.or,
                          fontSize: Dimensions.getFontSizeDefault(context),
                        ),
                        const Expanded(
                          child: Divider(),
                        )
                      ],
                    ),
                    20.heightWidth,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(text: AppStrings.haveAAccount),
                        TextButton(
                            onPressed: () {
                              context.goNamed(RoutePath.login);
                            },
                            child: const CustomText(
                              text: AppStrings.logInNow,
                              color: AppColors.blueColor,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
