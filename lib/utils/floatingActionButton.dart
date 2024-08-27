import 'package:flutter/material.dart';
import 'package:my_app_2/utils/customDialogBox.dart';

class floatingActionButton extends StatefulWidget {
  const floatingActionButton({super.key});

  @override
  State<floatingActionButton> createState() => _floatingActionButtonState();
}

class _floatingActionButtonState extends State<floatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromRGBO(10, 224, 243, 1.0),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return const customDialogButton();
            });
      },
      child: const Icon(Icons.add),
    );
  }
}
