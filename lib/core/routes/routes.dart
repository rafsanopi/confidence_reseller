import 'package:confidence_reseller/core/routes/route_path.dart';
import 'package:confidence_reseller/helper/extention/extention.dart';
import 'package:confidence_reseller/presentation/screens/auth/choose_account_type.dart';
import 'package:confidence_reseller/presentation/screens/auth/otp_varification.dart';
import 'package:confidence_reseller/presentation/screens/auth/sign_in.dart';
import 'package:confidence_reseller/presentation/screens/auth/sign_up.dart';
import 'package:confidence_reseller/presentation/screens/home/home.dart';
import 'package:confidence_reseller/presentation/screens/new_product/new_product.dart';
import 'package:confidence_reseller/presentation/screens/profile/controller/edit_profile.dart';
import 'package:confidence_reseller/presentation/screens/profile/profile.dart';
import 'package:confidence_reseller/presentation/screens/profit/profit.dart';
import 'package:confidence_reseller/presentation/screens/splash_screen/splash_screen.dart';
import 'package:confidence_reseller/presentation/widgets/error_screen/error_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter initRoute = GoRouter(
      initialLocation: RoutePath.splashScreen.addBasePath,
      // navigatorKey: Get.key,
      debugLogDiagnostics: true,
      routes: [
        ///======================= splash Route =======================

        GoRoute(
          name: RoutePath.splashScreen,
          path: RoutePath.splashScreen.addBasePath,
          builder: (context, state) => const SplashScreen(),
          redirect: (context, state) {
            Future.delayed(const Duration(seconds: 3), () {
              AppRouter.route.replaceNamed(RoutePath.login);
            });
            return null;
          },
        ),

        ///======================= Error Route =======================
        GoRoute(
            name: RoutePath.errorScreen,
            path: RoutePath.errorScreen.addBasePath,
            builder: (context, state) => const ErrorPage()),

        ///======================= Sign In Route =======================
        GoRoute(
            name: RoutePath.login,
            path: RoutePath.login.addBasePath,
            builder: (context, state) => SignInScreen()),

        ///======================= Choose Account Type Route =======================
        GoRoute(
            name: RoutePath.chooseAccountType,
            path: RoutePath.chooseAccountType.addBasePath,
            builder: (context, state) => const ChooseAccountType()),

        ///======================= Sign Up Route =======================
        GoRoute(
            name: RoutePath.signUp,
            path: RoutePath.signUp.addBasePath,
            builder: (context, state) => const SignUpScreen()),

        ///======================= Varify OTP Route =======================
        GoRoute(
            name: RoutePath.varification,
            path: RoutePath.varification.addBasePath,
            builder: (context, state) => const OtpVarification()),

        ///======================= Home Screen Route =======================

        GoRoute(
            name: RoutePath.homeScreen,
            path: RoutePath.homeScreen.addBasePath,
            builder: (context, state) => HomeScreen()),

        ///======================= New Products Screen Route =======================

        GoRoute(
            name: RoutePath.newProducts,
            path: RoutePath.newProducts.addBasePath,
            builder: (context, state) => NewProductScreen()),

        ///======================= Profit Route =======================

        GoRoute(
            name: RoutePath.profit,
            path: RoutePath.profit.addBasePath,
            builder: (context, state) => ProfitScreen()),

        ///======================= Profile Route =======================

        GoRoute(
            name: RoutePath.profile,
            path: RoutePath.profile.addBasePath,
            builder: (context, state) => ProfileScreen()),

        ///======================= Edit Profile Route =======================

        GoRoute(
            name: RoutePath.editProfile,
            path: RoutePath.editProfile.addBasePath,
            builder: (context, state) => EditProfileScreen()),
      ]);

  static GoRouter get route => initRoute;
}
