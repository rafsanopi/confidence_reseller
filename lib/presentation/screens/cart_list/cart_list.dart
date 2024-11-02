import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_button/custom_button.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/presentation/widgets/useful_customs/useful_customs.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartList extends StatelessWidget {
  CartList({super.key});
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
                icon: Assets.icons.cartList.svg(color: AppColors.blackColor),
                title: AppStrings.cartList),

            /// ========================== Product List ===========================

            ...List.generate(
              3,
              (index) {
                return Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  padding: EdgeInsets.only(top: 10.r),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.outer,
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        color: AppColors.blackColor.withOpacity(.2),
                        spreadRadius: 5)
                  ]),
                  child: Row(
                    children: [
                      //// =========================== Image ========================
                      Assets.images.product2.image(
                          height: 100, width: 120, fit: BoxFit.fitHeight),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "ID: 458795",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                              30.heightWidth,
                              CustomText(
                                text: "বিক্রয় মূল্য: ৳১০০০",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "সাইজ: 40",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                              30.heightWidth,
                              CustomText(
                                text: "প্রফিট: ৳৩০০",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "1Sep 2024",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                              30.heightWidth,
                              CustomText(
                                text: "আমার প্রফিট: ৳৩০০",
                                fontSize: Dimensions.getFontSizeSmall(context),
                              ),
                            ],
                          ),
                          10.heightWidth,
                          Row(
                            children: [
                              Row(
                                children: [
                                  CustomButton(
                                    onTap: () {},
                                    height: 30,
                                    width: 40,
                                    title: "-",
                                  ),
                                  const CustomText(
                                    text: "01",
                                    left: 10,
                                    right: 10,
                                  ),
                                  CustomButton(
                                    onTap: () {},
                                    height: 30,
                                    width: 40,
                                    title: "+",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.delete_forever_outlined,
                                        color: Colors.red,
                                      )),
                                  const CustomText(
                                    text: AppStrings.remove,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),

            //// ============================== Total Price =====================================
            const Divider(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const Row(
                children: [
                  CustomText(text: AppStrings.productTotalPrice),
                  CustomText(
                    text: "৳২০০০",
                    color: AppColors.redColor,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      onTap: () {},
                      title: AppStrings.orderNow,
                    ),
                  ),
                  20.heightWidth,
                  Expanded(
                    child: CustomButton(
                      onTap: () {},
                      title: AppStrings.addmore,
                    ),
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
