import 'package:flutter/material.dart';
import 'package:aktivitas2/page1.dart';
void main() {
  runApp(const MyApp());
}
// Mohamamd Fatchur Rochman
// 1462300016 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Page1(),
    );
  }
}