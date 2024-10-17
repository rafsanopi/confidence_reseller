import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/presentation/widgets/app_bar/app_bar.dart';
import 'package:confidence_reseller/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:confidence_reseller/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarScreen(currentIndex: 0),
      body: Column(
        children: [
          /// ========================= Custom App Bar =========================

          CustomAppBar(
            scaffoldKey: scaffoldKey,
          ),

          /// =========================== Banner =======================
          Assets.images.banner1.image(
              fit: BoxFit.fitWidth,
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 5),

          /// ======================== Social Link Box =============================

          Container(
            padding: EdgeInsets.all(10.r),
            decoration:
                BoxDecoration(border: Border.all(color: AppColors.blackColor)),
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
