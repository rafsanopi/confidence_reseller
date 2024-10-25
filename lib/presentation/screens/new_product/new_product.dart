import 'package:confidence_reseller/core/routes/route_path.dart';
import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/screens/new_product/controller/new_pro_controller.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class NewProductScreen extends StatelessWidget {
  NewProductScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final NewProController newProController = Get.find<NewProController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomSideDrawer(),
      bottomNavigationBar: const NavBarScreen(currentIndex: 1),
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(
            children: [
              /// ==================== App Bar =======================
              CustomAppBar(scaffoldKey: scaffoldKey),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    10.heightWidth,

                    /// ========================= Choose Category Controller ===========================

                    DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: const CustomText(
                          text: AppStrings.selectCategory,
                        ),
                        items: newProController.items
                            .map((String item) => DropdownMenuItem<String>(
                                value: item, child: CustomText(text: item)))
                            .toList(),
                        value: newProController.selectedValue?.value,
                        onChanged: (value) {
                          // setState(() {
                          //   selectedValue = value;
                          // });

                          newProController.selectedValue?.value = value ?? "";
                          newProController.selectedValue?.refresh();
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 44,
                          width: double.maxFinite,
                          padding: const EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: AppColors.whiteColor,
                          ),
                          //elevation: 2,
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          iconSize: 14,
                          iconEnabledColor: AppColors.blackColor,
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          direction: DropdownDirection.right,
                          maxHeight: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),

                    20.heightWidth,
                    ...List.generate(
                      3,
                      (index) {
                        return Column(
                          children: [
                            /// ================= Logo ===============
                            Row(
                              children: [
                                Assets.icons.resellerBlackLogo.image(),
                                10.heightWidth,
                                Assets.icons.varifiedProduct.svg()
                              ],
                            ),
                            8.heightWidth,

                            /// ================= Time ===============

                            Row(
                              children: [
                                Assets.icons.clock.svg(),
                                CustomText(
                                  left: 10.w,
                                  text: "16 min ago",
                                  fontSize:
                                      Dimensions.getFontSizeSmall(context),
                                )
                              ],
                            ),

                            /// ==================== Product Description on html Format ===========================

                            const HtmlWidget(
                                '''<div style="padding: 8px; font-family: Inter, sans-serif; color: #7C7D7F;">
             <p><strong>প্রোডাক্ট নেম:</strong> সোনা এবং ডায়মন্ডের নেকলেস</p>
            
            <p><strong>দাম:</strong> ৳১,৫০,০০০</p>
            <p><strong>প্রোডাক্ট কোড:</strong> JN-001</p>
            <p><strong>উপাদান:</strong> ২৪ ক্যারেট সোনা, ১০ ক্যারেট ডায়মন্ড</p>
            <p><strong>ডিজাইন:</strong> ক্লাসিক ফ্লাওয়ার ডিজাইন</p>
            <p><strong>ওজন:</strong> ২৫ গ্রাম</p>
            
            <h3>বিবরণ:</h3>
            <p>এই নেকলেসটি সম্পূর্ণরূপে ২৪ ক্যারেট সোনা দিয়ে তৈরি এবং এতে ১০ ক্যারেট ডায়মন্ড জড়ানো হয়েছে। ক্লাসিক ফ্লাওয়ার ডিজাইনটি প্রতিটি অনুষ্ঠানে আপনার সৌন্দর্য বাড়িয়ে তুলবে।</p>
          </div>'''),

                            Row(
                              children: [
                                /// ============================ See More/Less Button =======================

                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.h, horizontal: 16.w),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.blackColor)),
                                    child: CustomText(
                                      text: AppStrings.seeMore,
                                      fontSize:
                                          Dimensions.getFontSizeSmall(context),
                                    ),
                                  ),
                                ),

                                /// ============================ Copy Button =======================
                                20.heightWidth,
                                GestureDetector(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.h, horizontal: 16.w),
                                    decoration: const BoxDecoration(
                                        color: AppColors.blackColor),
                                    child: Row(
                                      children: [
                                        Assets.icons.copy.svg(),
                                        CustomText(
                                          left: 8,
                                          color: AppColors.whiteColor,
                                          text: AppStrings.copy,
                                          fontSize: Dimensions.getFontSizeSmall(
                                              context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //// =============================== Image Section ============================

                            SingleChildScrollView(
                              padding: EdgeInsets.symmetric(vertical: 24.h),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  5,
                                  (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        context.pushNamed(
                                            RoutePath.productDetails);
                                      },
                                      child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Stack(
                                            children: [
                                              Assets.images.product1.image(),

                                              /// ======================= Download Button ===================
                                              Positioned(
                                                  left: 10,
                                                  top: 10,
                                                  child: Assets.icons.download
                                                      .image()),

                                              /// ======================= Favourite Button ===================

                                              Positioned(
                                                  right: 10,
                                                  top: 10,
                                                  child: Assets
                                                      .icons.favouUnselected
                                                      .image()),
                                            ],
                                          )),
                                    );
                                  },
                                ),
                              ),
                            ),

                            const Divider()
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
