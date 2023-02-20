import 'package:flutter/material.dart';
import 'package:operator_app/screens/home_screen.dart';

void main() {
  runApp(const OperatorApp());
}

class OperatorApp extends StatelessWidget {
  const OperatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),

      home: const HomeScreen(),
    );
  }
}
