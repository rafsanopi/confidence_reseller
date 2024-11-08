import 'package:confidence_reseller/core/routes/route_path.dart';
import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/presentation/widgets/side_drawer/side_drawer.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:confidence_reseller/utils/dimensions/dimensions.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';

class ProductVideoScreen extends StatelessWidget {
  ProductVideoScreen({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomSideDrawer(),
      key: scaffoldKey,
      body: SingleChildScrollView(
          child: Column(
        children: [
          /// ========================= Custom App Bar =========================

          CustomAppBar(
            scaffoldKey: scaffoldKey,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      Assets.icons.productVideo
                          // ignore: deprecated_member_use_from_same_package
                          .svg(color: AppColors.blackColor),
                      const CustomText(
                        text: AppStrings.productVideo,
                        left: 10,
                      )
                    ],
                  ),
                ),
                20.heightWidth,
                ...List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Assets.icons.resellerLogoNew.image(width: 100.w),
                          8.heightWidth,

                          /// ============================ Time ============================
                          Row(
                            children: [
                              Assets.icons.clock.svg(),
                              CustomText(
                                text: "16 minute ago",
                                left: 10,
                                fontSize: Dimensions.getFontSizeSmall(context),
                              )
                            ],
                          ),

                          // ========================== Product Description ========================

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

                          /// ============================= Video Thembnail =================================

                          GestureDetector(
                            onTap: () {
                              context.pushNamed(RoutePath.productDetails);
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Assets.images.product1.image(
                                    width: double.maxFinite, fit: BoxFit.cover),
                                Assets.images.videoButton.image()
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
