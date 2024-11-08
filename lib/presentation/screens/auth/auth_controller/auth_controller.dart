import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rx<TextEditingController> phnController = TextEditingController().obs;
  Rx<TextEditingController> passController = TextEditingController().obs;
}
