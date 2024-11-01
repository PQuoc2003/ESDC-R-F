import 'package:flutter/material.dart';
import 'package:restaurant_front/home/backend_screen.dart';
import 'package:restaurant_front/login/login_screen.dart';

class RouterManager {


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.backendPage:
        return MaterialPageRoute(builder: (_) => const BackendScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
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
  static const String backendPage = "/backend";
  static const String loginScreen = "/";

}
