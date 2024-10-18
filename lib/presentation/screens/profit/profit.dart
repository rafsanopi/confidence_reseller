import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfitScreen extends StatelessWidget {
  ProfitScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Widget cardDesign(
            {required VoidCallback onTap,
            required String title,
            required Color color,
            required Widget icon}) =>
        Container(
          margin: EdgeInsets.only(bottom: 10.h),
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: color,
          ),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    icon,
                    CustomText(
                      left: 10,
                      text: title,
                      color: AppColors.whiteColor,
                    )
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: AppColors.whiteColor,
                )
              ],
            ),
          ),
        );
    return Scaffold(
      bottomNavigationBar: const NavBarScreen(currentIndex: 2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ==================== App Bar =======================
            CustomAppBar(scaffoldKey: scaffoldKey),

            Container(
              margin: EdgeInsets.all(20.r),
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: AppColors.blackColor.withOpacity(.3))),
              child: CustomText(
                fontWeight: FontWeight.w600,
                text: AppStrings.profit,
                fontSize: Dimensions.getButtonFontSize(context),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Assets.images.profit.image(),
                  20.heightWidth,

                  /// ===================== Team Income ====================

                  cardDesign(
                      onTap: () {},
                      title: AppStrings.incomeFromTeam,
                      color: AppColors.pinkColor,
                      icon: Assets.icons.team.svg()),

                  /// ===================== Income Summery ====================

                  cardDesign(
                      onTap: () {},
                      title: AppStrings.incomeSummary,
                      color: AppColors.indegoColor,
                      icon: Assets.icons.income.svg()),

                  /// ===================== Sell and Profit ====================

                  cardDesign(
                      onTap: () {},
                      title: AppStrings.sellAndProfit,
                      color: AppColors.blueDeepColor,
                      icon: Assets.icons.sell.svg()),

                  /// ===================== Balance Statement ====================

                  cardDesign(
                      onTap: () {},
                      title: AppStrings.balanceStatement,
                      color: AppColors.skyColor,
                      icon: Assets.icons.balance.svg()),

                  /// ===================== Reseller Pro Rules ====================

                  cardDesign(
                      onTap: () {},
                      title: AppStrings.resellerProRules,
                      color: AppColors.greenLightColor,
                      icon: Assets.icons.resellerProRuls.svg()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
