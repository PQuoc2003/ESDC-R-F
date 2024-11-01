import 'package:flutter/material.dart';
import 'package:restaurant_front/router/router_manager/router_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text(
        "Login",
        style: TextStyle(color: Colors.red),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, Routes.mainPage);
        },
      ),
    );
  }
}
