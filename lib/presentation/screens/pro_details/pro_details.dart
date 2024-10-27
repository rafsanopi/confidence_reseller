import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/screens/pro_details/inner/pro_details_more.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ========================== Appbar ==========================
            CustomAppBar(
              scaffoldKey: scaffoldKey,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// ========================= Product details and back button ========================

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.blackColor)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              context.pop();
                            },
                            icon: const Icon(Icons.arrow_back_rounded)),
                        const CustomText(text: AppStrings.productDetails)
                      ],
                    ),
                  ),
                  20.heightWidth,

                  /// ============================ Image Section ============================

                  SizedBox(
                    width: double.maxFinite,
                    child: Stack(
                      children: [
                        /// ========================= Image =====================

                        Assets.images.product1.image(
                            width: double.maxFinite,
                            height: 300,
                            fit: BoxFit.cover),

                        /// ======================= Download Button ===================
                        Positioned(
                            left: 10,
                            top: 10,
                            child: Assets.icons.download.image()),

                        /// ======================= Favourite Button ===================

                        Positioned(
                            right: 10,
                            top: 10,
                            child: Assets.icons.favouUnselected.image()),

                        Positioned(
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /// ========================= Left Button ========================

                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 10.w, right: 30.w),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.primaryColor)),
                                    child: const Icon(
                                        color: AppColors.primaryColor,
                                        Icons.keyboard_arrow_left_outlined),
                                  ),
                                ),

                                /// ========================= Image Count ========================
                                Container(
                                    color: AppColors.whiteColor,
                                    child: const CustomText(text: "2/5")),

                                /// ========================= right Button ========================

                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        right: 10.w, left: 30.w),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.primaryColor)),
                                    child: const Icon(
                                        color: AppColors.primaryColor,
                                        Icons.keyboard_arrow_right_outlined),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),

                  /// ======================= More Products Image =========================

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        6,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10, top: 10),
                            child: Assets.images.product1
                                .image(height: 100, width: 100),
                          );
                        },
                      ),
                    ),
                  ),

                  /// ======================= Products Name =========================
                  const CustomText(
                    text: "প্রোডাক্টের নাম",
                    top: 10,
                    bottom: 8,
                    fontWeight: FontWeight.w600,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// ======================= Product Ratting =========================

                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 30,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),

                      Container(
                        padding: EdgeInsets.all(4.r),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.greenLightColor)),
                        child: Row(
                          children: [
                            Assets.icons.varifiedProduct.svg(),
                            const CustomText(
                              text: AppStrings.varified,
                              left: 6,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  20.heightWidth,

                  Row(
                    children: [
                      CustomText(
                        fontSize: Dimensions.getFontSizeSmall(context),
                        text: AppStrings.productPrice,
                      ),

                      /// ========================== Product Price ============================
                      CustomText(
                        color: AppColors.redColor,
                        fontSize: Dimensions.getFontSizeSmall(context),
                        text: "৳৫০০",
                        left: 6,
                      ),
                    ],
                  ),
                  10.heightWidth,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// ============================ Brand Name ==============================
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 20.w),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.blackColor),
                        ),
                        child: CustomText(
                          text: "ব্র্যান্ড এর নাম",
                          fontSize: Dimensions.getFontSizeSmall(context),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 20.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: AppColors.greenLightColor,
                        ),
                        child: CustomText(
                          fontSize: Dimensions.getFontSizeSmall(context),
                          text: AppStrings.inStock,
                          color: AppColors.whiteColor,
                        ),
                      )
                    ],
                  ),
                  10.heightWidth,
                  Row(
                    children: [
                      CustomText(
                        fontSize: Dimensions.getFontSizeSmall(context),
                        text: AppStrings.suggestedPrice,
                      ),

                      /// ========================== Suggested Selling Price ============================
                      CustomText(
                        fontWeight: FontWeight.w600,
                        color: AppColors.orangeColor,
                        fontSize: Dimensions.getFontSizeSmall(context),
                        text: "৳১০০০",
                        left: 6,
                      ),
                    ],
                  ),
                  10.heightWidth,

                  /// ========================== Note ============================
                  CustomText(
                    textAlign: TextAlign.left,
                    maxLines: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.redColor,
                    fontSize: Dimensions.getFontSizeSmall(context),
                    text:
                        "Red text (প্রোডাক্ট আপ্লোড এর সময় এডমিন রেড টেক্সট বক্স এ যে টেক্সট দিবে তা এখানে শো হবে)",
                  ),
                  20.heightWidth,

                  /// ========================== Copy ============================
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 6.h, horizontal: 20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      gradient: AppColors.primaryGradientColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Assets.icons.copy.svg(),
                        const CustomText(
                            text: AppStrings.copy, color: AppColors.whiteColor)
                      ],
                    ),
                  ),

                  10.heightWidth,

                  /// ========================== Product Description ============================
                  Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.blackColor)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          // textAlign: TextAlign.right,
                          text: AppStrings.productDetails,
                          fontSize: Dimensions.getFontSizeSmall(context),
                        ),
                        CustomText(
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            fontSize: Dimensions.getFontSizeSmall(context),
                            text:
                                "এই শার্টটি মানসম্পন্ন কাপড় দিয়ে তৈরি, যা আরামদায়ক এবং টেকসই ফ্যাশনেবল ডিজাইন ও বিভিন্ন আরো জানুন")
                      ],
                    ),
                  ),
                  10.heightWidth,

                  /// ========================== Download Video ============================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.blackColor),
                            borderRadius: BorderRadius.circular(6.r)),
                        padding: EdgeInsets.all(6.r),
                        child: Row(
                          children: [
                            const CustomText(
                              text: AppStrings.downloadVideo,
                              right: 10,
                            ),
                            Assets.icons.download.image()
                          ],
                        ),
                      ),
                    ],
                  ),
                  20.heightWidth,

                  /// ======================= Product Pricing ===========================
                  productPricing(context: context),
                  20.heightWidth,

                  /// ======================= Product Payment Pricing ===========================

                  paymentPrice(context: context),
                  20.heightWidth,

                  /// ======================= Suggested Product ===========================

                  suggestedProduct(context: context),
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
