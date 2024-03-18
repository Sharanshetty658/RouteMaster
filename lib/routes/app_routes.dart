import 'package:flutter/material.dart';
import '../presentation/one_screen/one_screen.dart';
import '../presentation/three_screen/three_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String oneScreen = '/one_screen';

  static const String threeScreen = '/three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    oneScreen: (context) => OneScreen(),
    threeScreen: (context) => ThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
