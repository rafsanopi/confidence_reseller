import 'package:get/get.dart';

class NewProController extends GetxController {
  final RxList<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ].obs;
  RxString? selectedValue;

  // final RxList<Map<String, dynamic>> newProList = <Map<String, dynamic>>[
  //   {
  //     ""
  //   }
  // ].obs;
}
