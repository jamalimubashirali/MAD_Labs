import 'package:flutter/material.dart';

class Sharedprefrencespractice extends StatefulWidget {
  const Sharedprefrencespractice({super.key});

  @override
  State<Sharedprefrencespractice> createState() => _SharedprefrencespracticeState();
}

class _SharedprefrencespracticeState extends State<Sharedprefrencespractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences"),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
