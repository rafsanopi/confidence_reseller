import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/presentation/widgets/custom_text/custom_text.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// ==================== Menu Button ======================
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: AppColors.primaryColor,
              )),

          /// =========================== Logo ========================
          Assets.icons.logoGreen.image(),

          /// ====================== Money Box =========================
          Row(
            children: [
              const CustomText(
                text: "00,00",
                right: 5,
              ),
              Assets.icons.moneyBox.image()
            ],
          )
        ],
      ),
    );
  }
}
