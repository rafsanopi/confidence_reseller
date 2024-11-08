import 'package:confidence_reseller/global/custom_assets/assets.gen.dart';
import 'package:confidence_reseller/utils/static_strings/static_strings.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> homeItems = [
    {
      AppStrings.icon: Assets.icons.resellingProduct.svg(),
      AppStrings.text: AppStrings.resellingProduct
    },
    {
      AppStrings.icon: Assets.icons.productSearch.svg(),
      AppStrings.text: AppStrings.productSearch
    },
    {
      AppStrings.icon: Assets.icons.resellerPro.svg(),
      AppStrings.text: AppStrings.resellerPro
    },
    {
      AppStrings.icon: Assets.icons.ecommerce.svg(),
      AppStrings.text: AppStrings.ecommerce
    },
    {
      AppStrings.icon: Assets.icons.passiveIncome.svg(),
      AppStrings.text: AppStrings.pasivIncome
    },
    {
      AppStrings.icon: Assets.icons.varifiedProduct.svg(),
      AppStrings.text: AppStrings.varifiedProduct
    },
    {
      AppStrings.icon: Assets.icons.mobileRecharge.svg(),
      AppStrings.text: AppStrings.mobileRechare
    },
    {
      AppStrings.icon: Assets.icons.leaderShip.svg(),
      AppStrings.text: AppStrings.leaderShip
    },
    {
      AppStrings.icon: Assets.icons.supportSvg.svg(),
      AppStrings.text: AppStrings.ecommerce
    },
    {AppStrings.icon: Assets.icons.faq.svg(), AppStrings.text: AppStrings.faq},
  ];
}
