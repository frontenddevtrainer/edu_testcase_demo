import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String message;

  const HomeScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [Text("Hello world"), Text(message)],
      )),
    );
  }
}
