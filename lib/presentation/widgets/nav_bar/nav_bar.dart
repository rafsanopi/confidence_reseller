import 'package:confidence_reseller/core/routes/route_path.dart';
import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NavBarScreen extends StatefulWidget {
  final int currentIndex;

  const NavBarScreen({super.key, required this.currentIndex});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  var bottomNavIndex = 0;

  List<Widget> unselectedIcon = [
    Assets.icons.homeUnselected.svg(),
    Assets.icons.newProUnselected.svg(),
    Assets.icons.profitUnselected.svg(),
    Assets.icons.profile.image(),
  ];

  List<Widget> selectedIcon = [
    Assets.icons.homeSelected.svg(),
    Assets.icons.newProSelected.svg(),
    Assets.icons.profitSelected.svg(),
    Assets.icons.profile.image(),
  ];

  final List<String> userNavText = [
    AppStrings.home,
    AppStrings.newProduct,
    AppStrings.profit,
    AppStrings.profile,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      height: 70.h,
      width: MediaQuery.of(context).size.width,
      // padding: EdgeInsets.symmetric(),
      child: Row(
        children: List.generate(
          unselectedIcon.length,
          (index) => InkWell(
              onTap: () => onTap(index),
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                //padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
                decoration: BoxDecoration(
                    gradient: index == bottomNavIndex
                        ? AppColors.primaryGradientColor
                        : null),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // SvgPicture.asset(
                    //   index == bottomNavIndex
                    //       ? selectedIcon[index]
                    //       : unselectedIcon[index],
                    //   height: 24.h,
                    //   width: 24.w,
                    // ),
                    index == bottomNavIndex
                        ? selectedIcon[index]
                        : unselectedIcon[index],
                    CustomText(
                      top: 6,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.r,
                      text: userNavText[index],
                      color: index == bottomNavIndex
                          ? AppColors.whiteColor
                          : AppColors.blackColor,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  void onTap(int index) {
    if (index == 0 && widget.currentIndex != 0) {
      context.pushReplacementNamed(RoutePath.homeScreen);
    } else if (index == 1 && widget.currentIndex != 1) {
      context.pushReplacementNamed(RoutePath.newProducts);
    } else if (index == 2 && widget.currentIndex != 2) {
      context.pushReplacementNamed(RoutePath.profit);
    } else if (index == 3 && widget.currentIndex != 3) {
      context.pushReplacementNamed(RoutePath.profile);
    }
  }
}
