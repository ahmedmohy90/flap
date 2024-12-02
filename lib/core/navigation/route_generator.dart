import 'package:flap_task/features/order/presentation/views/dash_board_screen.dart';
import 'package:flap_task/splash_screen.dart';
import 'package:flutter/material.dart';
import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

class RouterGenerator {
  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

  static Route? getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.splash:
        return _pageRouter.build(const SplashScreen(), settings: settings);
      
 
      case NamedRoutes.dashBoard:
         return _pageRouter.build(const DashboardScreen(), settings: settings);
    }
  }
}
