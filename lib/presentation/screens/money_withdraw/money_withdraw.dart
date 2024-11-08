import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text_field/custom_text_field.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoneyWithdraw extends StatelessWidget {
  MoneyWithdraw({super.key});
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
                icon:
                    Assets.icons.moneyWithdrow.svg(color: AppColors.blackColor),
                title: AppStrings.moneyWithdraw),

            /// =========================== Select a Account =============================
            20.heightWidth,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  asteriskSignText(title: AppStrings.selectAAccount),
                  const CustomTextField(
                    border: OutlineInputBorder(),
                  ),
                  20.heightWidth,
                  asteriskSignText(title: AppStrings.ammount),
                  const CustomTextField(
                    border: OutlineInputBorder(),
                  ),
                  CustomText(
                    top: 20.h,
                    text: AppStrings.yourBalance,
                    color: AppColors.redColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
