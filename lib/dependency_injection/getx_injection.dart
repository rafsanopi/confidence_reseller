import 'package:confidence_reseller/global/general_controller/general_controller.dart';
import 'package:confidence_reseller/presentation/screens/auth/auth_controller/auth_controller.dart';
import 'package:get/get.dart';

void initGetx() {
  // ================== Global Controller ==================

  Get.lazyPut(() => GeneralController(), fenix: true);

  // ================== Global Controller ==================
  Get.lazyPut(() => AuthController(), fenix: true);
}
