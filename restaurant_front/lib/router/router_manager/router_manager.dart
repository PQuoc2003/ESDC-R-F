import 'package:flutter/material.dart';
import 'package:restaurant_front/home/backend_screen.dart';
import 'package:restaurant_front/home/home_sceen.dart';
import 'package:restaurant_front/login/login_screen.dart';

class RouterManager {


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.mainPage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.backendPage:
        return MaterialPageRoute(builder: (_) => const BackendScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

class Routes {
  static const String mainPage = "/home";
  static const String loginPage = "/";
  static const String backendPage = "/backend";
}
