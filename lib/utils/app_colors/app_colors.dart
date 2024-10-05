import 'package:flutter/material.dart';

class AppColors {
  static const blackColor = Color(0xff5B5C5F);

  static const redColor = Color(0xffFF0025);
  static const blueColor = Color(0xff1677FF);
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
}
