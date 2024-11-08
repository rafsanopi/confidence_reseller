import 'package:confidence_reseller/global/general_controller/general_controller.dart';
import 'package:confidence_reseller/presentation/screens/auth/auth_controller/auth_controller.dart';
import 'package:confidence_reseller/presentation/screens/home/home_controller/home_controller.dart';
import 'package:confidence_reseller/presentation/screens/new_product/controller/new_pro_controller.dart';
import 'package:confidence_reseller/presentation/screens/profile/controller/profile_controller.dart';
import 'package:get/get.dart';

void initGetx() {
  // ================== Global Controller ==================

  Get.lazyPut(() => GeneralController(), fenix: true);

  // ================== Auth Controller ==================
  Get.lazyPut(() => AuthController(), fenix: true);

  // ================== Home Controller ==================

  Get.lazyPut(() => HomeController(), fenix: true);

  // ================== New Product Controller ==================

  Get.lazyPut(() => NewProController(), fenix: true);

  // ================== Profile Controller ==================

  Get.lazyPut(() => ProfileController(), fenix: true);
}
