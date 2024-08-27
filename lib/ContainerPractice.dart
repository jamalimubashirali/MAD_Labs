import 'package:flutter/material.dart';

class Containerpractice extends StatefulWidget {
  const Containerpractice({super.key});

  @override
  State<Containerpractice> createState() => _ContainerpracticeState();
}

class _ContainerpracticeState extends State<Containerpractice> {
  Offset _offset = const Offset(0.0, 0.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestures Demo & Container"),
        backgroundColor: const Color.fromRGBO(212, 110, 67, 0.9),
      ),
      body: Center(
        child: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              _offset = Offset(
                  _offset.dx+details.delta.dx,
                  _offset.dy + details.delta.dy
              );
            });
          },
          onPanEnd: (details) {
            setState(() {
              _offset = const Offset(0.0, 0.0);
            });
          },
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text("Single Tap Performed"),
                )
            );
          },
          onDoubleTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text("Double Tap Performed"),
              )
            );
          },
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text("LongPress Performed")
              )
            );
          },

          child: Transform.translate(
            offset: _offset,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
