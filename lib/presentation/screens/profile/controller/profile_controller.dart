import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<TextEditingController> phoneController =
      TextEditingController(text: "01354898878").obs;
  Rx<TextEditingController> addressController =
      TextEditingController(text: "8502 Preston Rd. Inglewood, Maine 98380")
          .obs;
  Rx<TextEditingController> shopeAddressController =
      TextEditingController(text: "আপনার দোকান/ফেজবুক পেজ এর নাম").obs;
}
