import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BackendScreen extends StatefulWidget {
  const BackendScreen({super.key});

  @override
  State<BackendScreen> createState() => _BackendScreenState();
}

class _BackendScreenState extends State<BackendScreen> {

  late Future<String> message;

  Future<String> fetchMessage() async {
    final response = await http.get(Uri.parse('http://localhost:8080/api/home'));

    if (response.statusCode == 200) {
      return 'Success';
    } else {
      throw Exception('Failed to load items');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: fetchMessage(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return Text(snapshot.data ?? 'No message');
            }
          },
        ),
      ),
    );
  }
}
