import 'package:flutter/material.dart';
import 'package:my_app_2/AsynchronousProgrammingPractice.dart';
import 'package:my_app_2/ContainerPractice.dart';
import 'package:my_app_2/Todo_App.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Asynchronousprogrammingpractice(),
    );
  }
}


