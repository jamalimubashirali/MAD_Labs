import 'package:flutter/material.dart';

class Sqlliteclass extends StatefulWidget {
  const Sqlliteclass({super.key});

  @override
  State<Sqlliteclass> createState() => _SqlliteclassState();
}

class _SqlliteclassState extends State<Sqlliteclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SQLite Class",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Text("SQLite Practice"),
      ),
    );
  }
}
