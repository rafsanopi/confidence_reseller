import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StockOutPro extends StatelessWidget {
  StockOutPro({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomSideDrawer(),
      key: scaffoldKey,
      body: Column(
        children: [
          /// ========================= Custom App Bar =========================

          CustomAppBar(
            scaffoldKey: scaffoldKey,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  padding: EdgeInsets.all(10.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.stockOut
                          // ignore: deprecated_member_use_from_same_package
                          .svg(color: AppColors.blackColor),
                      const CustomText(
                        text: AppStrings.stockOutPro,
                        left: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
              child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: MediaQuery.sizeOf(context).height / 2.5),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10.r),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Assets.images.product1.image(
                            height: MediaQuery.sizeOf(context).height / 5),
                        Positioned(
                            child: IconButton(
                                onPressed: () {},
                                icon: Assets.icons.download.image())),
                        Positioned(
                            right: 0,
                            child: IconButton(
                                onPressed: () {},
                                icon: Assets.icons.favouUnselected.image())),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20.r),
                      decoration: BoxDecoration(
                          gradient: AppColors.primaryGradientColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.r),
                              bottomRight: Radius.circular(8.r))),
                      child: Column(
                        children: [
                          const CustomText(
                            text: "পন্যের নাম",
                            color: AppColors.whiteColor,
                          ),
                          CustomText(
                            text: "স্টকআউট",
                            fontSize: Dimensions.getFontSizeSmall(context),
                            color: AppColors.redColor,
                          ),
                          const CustomText(
                            text: "মূল্যঃ ৳৫০০.০০",
                            color: AppColors.whiteColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
