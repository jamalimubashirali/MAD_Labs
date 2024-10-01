import 'package:flutter/material.dart';
import 'package:my_app_2/SQLLiteClass.dart';
import 'package:my_app_2/StateManagement_Provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Sqlliteclass(),
    );
  }
}


