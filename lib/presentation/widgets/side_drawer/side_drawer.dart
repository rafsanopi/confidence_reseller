import 'package:confidence_reseller/core/routes/route_path.dart';
import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomSideDrawer extends StatelessWidget {
  const CustomSideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget sideCardDesign(
            {required VoidCallback onTap,
            required String title,
            required Widget icon}) =>
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.h, left: 20.w, right: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    icon,
                    CustomText(
                      left: 10,
                      text: title,
                      color: AppColors.whiteColor,
                    ),
                  ],
                ),
                const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: AppColors.whiteColor,
                )
              ],
            ),
          ),
        );

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width / 1.2,
      color: AppColors.primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            20.heightWidth,
            Assets.icons.logo.image(height: 100, width: 100),
            30.heightWidth,

            /// ============================ Notification ===========================

            sideCardDesign(
              onTap: () {
                context.pushNamed(RoutePath.notifications);
              },
              title: AppStrings.notification,
              icon: Assets.icons.notificationWhite.svg(),
            ),

            /// ============================ Product Video ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.productVideo,
              icon: Assets.icons.productVideo.svg(),
            ),

            /// ============================ Favourite Product ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.favouritePro,
              icon: Assets.icons.favourite.svg(),
            ),

            /// ============================ Stock Out ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.stockOutPro,
              icon: Assets.icons.stockOut.svg(),
            ),

            /// ============================ Order List ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.orderList,
              icon: Assets.icons.orderList.svg(),
            ),

            /// ============================ Cart List ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.cartList,
              icon: Assets.icons.cartList.svg(),
            ),

            /// ============================ Money Withdrow ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.moneyWithdraw,
              icon: Assets.icons.moneyWithdrow.svg(),
            ),

            /// ============================ Withdrow History ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.withdrawHistory,
              icon: Assets.icons.withdrowHistory.svg(),
            ),

            /// ============================ Team Information ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.teamInformation,
              icon: Assets.icons.teamInfo.svg(),
            ),

            /// ============================ Log Out ===========================

            sideCardDesign(
              onTap: () {},
              title: AppStrings.logOut,
              icon: Assets.icons.logOut.svg(),
            ),
          ],
        ),
      ),
    );
  }
}
