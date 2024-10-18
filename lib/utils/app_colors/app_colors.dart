import 'package:flutter/material.dart';

class AppColors {
  static const blackColor = Color(0xff5B5C5F);
  static const orangeColor = Color(0xffFF9900);

  static const redColor = Color(0xffFF0025);
  static const blueColor = Color(0xff1677FF);
  static const blueLightColor = Color(0xffE8F1FF);

  static const primaryColor = Color(0xff34A853);

  static const whiteColor = Color.fromARGB(255, 255, 255, 255);

  static const LinearGradient primaryGradientColor = LinearGradient(
    colors: [
      Color(0xFF8EC63D),
      Color(0xFF039445),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient blueGradientColor = LinearGradient(
    colors: [
      Color(0xFF124699),
      Color(0xFF554ADD),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight,
  );
}
