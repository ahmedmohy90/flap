import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/navigation/named_routes.dart';
import '../core/navigation/navigator.dart';
import '../core/navigation/route_generator.dart';
import '../core/resources/theme_manager.dart';



class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
          
           
            onGenerateRoute: RouterGenerator.getRoute,
            initialRoute: NamedRoutes.splash.routeName,
           
            theme: appTheme,
            navigatorKey: Go.navigatorKey);
      },
    );
  }
}
