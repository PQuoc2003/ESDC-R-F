import 'package:flutter/material.dart';
import 'package:restaurant_front/router/router_manager/router_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: RouterManager.generateRoute,
      initialRoute: Routes.backendPage,
    );
  }
}

