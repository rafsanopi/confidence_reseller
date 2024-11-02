import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_button/custom_button.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text_field/custom_text_field.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddWallet extends StatelessWidget {
  AddWallet({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomSideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ========================= Custom App Bar =========================

            CustomAppBar(
              scaffoldKey: scaffoldKey,
            ),

            //// ============================ Header Title ===============================

            title(
                // ignore: deprecated_member_use_from_same_package
                icon: Assets.icons.addWallet.svg(color: AppColors.blackColor),
                title: AppStrings.addWallet),

            Container(
              margin: EdgeInsets.all(24.r),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.blackColor),
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(20.r),
              child: Column(
                children: [
                  asteriskSignText(title: AppStrings.accountType, bottom: 20.h),
                  Row(
                    children: [
                      Assets.images.nagad.image(),
                      10.heightWidth,
                      Assets.images.bkash.image(),
                    ],
                  ),

                  /// ======================= Account Number ===========================
                  asteriskSignText(
                      title: AppStrings.accountNumber, bottom: 10.h, top: 10.h),

                  const CustomTextField(
                    border: OutlineInputBorder(),
                  ),
                  30.heightWidth,

                  /// ========================== Save Button ===========================
                  CustomButton(
                    onTap: () {},
                    title: AppStrings.saveIt,
                  ),

                  10.heightWidth,

                  /// ========================== Support Center ===========================
                  CustomButton(
                    borderColor: AppColors.primaryColor,
                    gradient: const LinearGradient(colors: [
                      Colors.transparent,
                      Colors.transparent,
                    ]),
                    onTap: () {},
                    title: AppStrings.supportCenter,
                    textColor: AppColors.primaryColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
