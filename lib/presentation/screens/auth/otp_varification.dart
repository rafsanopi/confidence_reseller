import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/custom_button/custom_button.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVarification extends StatelessWidget {
  const OtpVarification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///========================= Top Design ==========================

          gradientBackgroundWidget(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.logo.image(width: 200.w),
                // CustomText(
                //   top: 10.h,
                //   text: AppStrings.chooseYourAccount,
                //   color: AppColors.whiteColor,
                // )
              ],
            ),
            context: context,
          ),

          stackCardPosition(
            context: context,
            top: context.height / 3.5,
            cardHeight: context.height >= 783
                ? context.height / 2.2
                : context.height / 2,
            child: Column(
              children: [
                const CustomText(
                  text: AppStrings.weHaveSendACode,
                  maxLines: 3,
                ),
                const CustomText(
                  text: "0999999999",
                  maxLines: 3,
                ),
                20.heightWidth,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.clockRed.image(),

                    /// =========================== Time Counter ==========================

                    const CustomText(
                      left: 10,
                      text: "00:59",
                      color: AppColors.redColor,
                      maxLines: 3,
                    ),
                  ],
                ),
                20.heightWidth,

                /// ====================== Pinput Field ================================
                PinCodeTextField(
                  // key: formKey,
                  //controller: authController.otpController.value,
                  length: 6,
                  cursorColor: AppColors.primaryColor,
                  keyboardType: TextInputType.text,
                  enablePinAutofill: true,
                  appContext: (context),
                  // onCompleted: (value) {
                  //   authController.otpController.value.text = value;
                  // },
                  autoFocus: true,
                  textStyle: const TextStyle(
                      color: AppColors.blackColor, fontSize: 24),
                  pinTheme: PinTheme(
                    disabledColor: Colors.transparent,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 44,
                    activeFillColor: AppColors.whiteColor,
                    selectedFillColor: AppColors.whiteColor,
                    inactiveFillColor: AppColors.whiteColor,
                    borderWidth: 0.5,
                    errorBorderColor: Colors.red,
                    activeBorderWidth: 0,
                    selectedColor: AppColors.blueColor,
                    inactiveColor: const Color(0xFFCCCCCC),
                    activeColor: AppColors.blueColor,
                  ),
                  enableActiveFill: true,
                ),

                /// ========================== Buttons ===========================
                20.heightWidth,
                Row(
                  children: [
                    /// =================== Try Again Button ======================
                    Expanded(
                      child: CustomButton(
                        borderColor: AppColors.blackColor.withOpacity(.5),
                        textColor: AppColors.blackColor.withOpacity(.5),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 255, 255, 255),
                        ]),
                        onTap: () {},
                        title: AppStrings.sendAgain,
                      ),
                    ),
                    20.heightWidth,

                    /// =================== Confirm Button ======================

                    Expanded(
                        child: CustomButton(
                      onTap: () {
                        showCongratesPopUp(context: context);
                      },
                      title: AppStrings.confirn,
                    ))
                  ],
                )

                ///
              ],
            ),
          )
        ],
      ),
    );
  }
}
