import 'package:confidence_reseller/core/routes/route_path.dart';
import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/screens/auth/auth_controller/auth_controller.dart';
import 'package:confidence_reseller/presentation/widgets/custom_button/custom_button.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text_field/custom_text_field.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //  clipBehavior: Clip.none,
        // fit: StackFit.expand,
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

          stackCardPosition(
              top: context.height / 3.5,
              cardHeight: context.height >= 783
                  ? context.height / 1.9
                  : context.height / 1.6,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    asteriskSignText(title: AppStrings.mobileNumber),

                    /// ==================== Phone Input Field =========================
                    CustomTextField(
                      textEditingController: authController.phnController.value,
                      hintText: AppStrings.enterYourPhoneNumber,
                    ),

                    /// ==================== Phone Input Field =========================

                    asteriskSignText(title: AppStrings.password, top: 24.h),
                    CustomTextField(
                      textInputAction: TextInputAction.done,
                      textEditingController:
                          authController.passController.value,
                      hintText: AppStrings.enterYourPassword,
                    ),

                    20.heightWidth,

                    //============================ Log In Button ========================
                    CustomButton(
                      onTap: () {},
                      title: AppStrings.logIn,
                    ),
                    10.heightWidth,

                    //============================ Forgot Password ========================

                    TextButton(
                      onPressed: () {},
                      child: CustomText(
                        text: AppStrings.forgotPass,
                        color: AppColors.blueColor,
                        fontSize: Dimensions.getFontSizeDefault(context),
                      ),
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
                    10.heightWidth,

                    /// ====================== Register Account =========================
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(text: AppStrings.noAccount),
                        TextButton(
                          onPressed: () {
                            context.pushNamed(RoutePath.chooseAccountType);
                          },
                          child: const CustomText(
                            text: AppStrings.register,
                            color: AppColors.blueColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              context: context)
        ],
      ),
    );
  }
}
