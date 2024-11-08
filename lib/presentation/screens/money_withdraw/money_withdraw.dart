import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_button/custom_button.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text_field/custom_text_field.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

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

                  /// ============================== Select a Account ================================

                  const CustomTextField(
                    border: OutlineInputBorder(),
                  ),
                  20.heightWidth,
                  asteriskSignText(title: AppStrings.ammount),

                  /// ============================== Money Account ================================

                  const CustomTextField(
                    border: OutlineInputBorder(),
                  ),
                  CustomText(
                    top: 20.h,
                    bottom: 20.h,
                    text: AppStrings.yourBalance,
                    color: AppColors.redColor,
                  ),

                  asteriskSignText(
                      title: AppStrings.withdrawType,
                      fontSize: Dimensions.getFontSizeSmall(context)),

                  /// ============================ Type Instalment ===============================

                  withdrowType(
                      title: "ইনস্ট্যান্ট পেমেন্ট",
                      description: const HtmlWidget(
                        """
         <div style="font-size: 10px;">
           
            <ul>
                <li>মিনিমাম উইথড্র অ্যামাউন্ট: ৫৫ টাকা।</li>
                <li>১,০০০ টাকা পর্যন্ত চার্জ: শুধুমাত্র ৫ টাকা।</li>
                <li>১,০০০ টাকার বেশি হলে চার্জ: প্রতি হাজারে ৫ টাকা।</li>
            </ul>
          </div>
          """,
                      )),

                  /// ============================ Regular Payment ===============================

                  withdrowType(
                      title: "রেগুলার পেমেন্ট",
                      description: const HtmlWidget(
                        """
         <div style="font-size: 10px;">
           
            <ul>
                <li>মিনিমাম উইথড্র ১৫ টাকা</li>
                <li>চার্জ ০ টাকা।</li>
                <li>সময় ১২ ঘন্টা</li>
            </ul>
          </div>
          """,
                      )),

                  /// ================================= Submit Button ====================================

                  CustomButton(
                    marginVerticel: 20.h,
                    onTap: () {},
                    title: AppStrings.submitNow,
                  ),

                  /// ================================= Submit Button ====================================

                  CustomButton(
                    textColor: AppColors.primaryColor,
                    borderColor: AppColors.primaryColor,
                    gradient: const LinearGradient(
                        colors: [Colors.transparent, Colors.transparent]),
                    onTap: () {},
                    title: AppStrings.donateNow,
                  ),
                  44.heightWidth
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget withdrowType({
  required String title,
  required Widget description,
}) =>
    Container(
      margin: EdgeInsets.only(top: 20.h),
      padding: EdgeInsets.all(10.r),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(),
          left: BorderSide(color: AppColors.blackColor),
          right: BorderSide(color: AppColors.blackColor),
        ),
      ),
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (value) {},
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [CustomText(text: title), description],
          )
        ],
      ),
    );
