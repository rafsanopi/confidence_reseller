import 'package:confidence_reseller/core/routes/routes.dart';
import 'package:confidence_reseller/core/theme/light_theme.dart';
import 'package:confidence_reseller/dependency_injection/getx_injection.dart';
import 'package:confidence_reseller/dependency_injection/path.dart';
import 'package:confidence_reseller/utils/system_utils/system_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  SystemUtil.setStatusBarColor(color: Colors.white);
  initGetx();
  initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      // splitScreenMode: true,
      builder: (context, child) => GetMaterialApp.router(
        debugShowCheckedModeBanner: false,
        //title: 'IHB',
        theme: lightTheme,
        defaultTransition: Transition.noTransition,
        transitionDuration: const Duration(milliseconds: 0),
        // darkTheme:CustomTheme.darkTheme, // standard dark theme
        //themeMode: lightTheme,
        routeInformationParser: AppRouter.route.routeInformationParser,
        routerDelegate: AppRouter.route.routerDelegate,
        routeInformationProvider: AppRouter.route.routeInformationProvider,
      ),
    );
  }
}
