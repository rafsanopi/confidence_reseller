import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/custom_button/custom_button.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text_field/custom_text_field.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget productPricing({required BuildContext context}) => Row(
      children: [
        /// ===================== Product Quantity =====================

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: AppStrings.productQuentity,
                fontSize: Dimensions.getFontSizeSmall(context),
              ),
              const CustomTextField(
                isDense: true,
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor)),
              ),
            ],
          ),
        ),
        10.heightWidth,

        /// ===================== Product Size =====================

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: AppStrings.productSize,
                fontSize: Dimensions.getFontSizeSmall(context),
              ),
              const CustomTextField(
                  isDense: true,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor))),
            ],
          ),
        ),
        10.heightWidth,

        /// ===================== Product Color =====================

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: AppStrings.productColor,
                fontSize: Dimensions.getFontSizeSmall(context),
              ),
              const CustomTextField(
                  isDense: true,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor))),
            ],
          ),
        ),
      ],
    );

Widget paymentPrice({required BuildContext context}) => Column(
      children: [
        Row(
          children: [
            /// ===================== Product Selling Price =====================

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: AppStrings.sellingPrice,
                    fontSize: Dimensions.getFontSizeSmall(context),
                  ),
                  const CustomTextField(
                      isDense: true,
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.primaryColor))),
                ],
              ),
            ),
            20.heightWidth,

            /// ===================== Advance Payment =====================

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: AppStrings.advancePayment,
                    fontSize: Dimensions.getFontSizeSmall(context),
                  ),
                  const CustomTextField(
                      isDense: true,
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.primaryColor))),
                ],
              ),
            ),
          ],
        ),
        20.heightWidth,

        /// ===================== Total Payment =====================
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: AppStrings.totalProfit,
              fontSize: Dimensions.getFontSizeSmall(context),
            ),
            const CustomTextField(
                isDense: true,
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor))),
          ],
        ),
        20.heightWidth,

        Row(
          children: [
            /// ===================== Order Button =====================
            Expanded(
                child: CustomButton(
              title: AppStrings.order,
              textColor: AppColors.primaryColor,
              borderColor: AppColors.primaryColor,
              gradient: const LinearGradient(
                  colors: [AppColors.whiteColor, AppColors.whiteColor]),
              onTap: () {},
            )),
            20.heightWidth,

            /// ===================== Add More =====================
            Expanded(
                child: CustomButton(
              title: AppStrings.addmore,
              onTap: () {},
            )),
          ],
        ),

        CustomText(top: 20.h, text: AppStrings.suggestedProduct)
      ],
    );

Widget suggestedProduct({required BuildContext context}) => Column(
      children: List.generate(
        3,
        (index) {
          return Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Assets.icons.download.image(),
                  Assets.images.product1.image(
                      width: MediaQuery.of(context).size.width - 100.w,
                      fit: BoxFit.fitWidth),
                  Assets.icons.favouUnselected.image()
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.h),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r)),
                  gradient: AppColors.primaryGradientColor,
                ),
                padding: EdgeInsets.all(20.r),
                child:const Column(
                  children: [
                    CustomText(
                      text: "পন্যের নাম",
                      color: AppColors.whiteColor,
                    ),
                    CustomText(
                      text: "মূল্যঃ ৳৫০০.০০",
                      color: AppColors.whiteColor,
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
