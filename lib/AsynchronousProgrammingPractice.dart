import 'package:flutter/material.dart';

class Asynchronousprogrammingpractice extends StatefulWidget {
  const Asynchronousprogrammingpractice({super.key});

  @override
  State<Asynchronousprogrammingpractice> createState() =>
      _AsynchronousprogrammingpracticeState();
}

class _AsynchronousprogrammingpracticeState
    extends State<Asynchronousprogrammingpractice> {
  Stream<String> getData() async* {
    while(true){
      DateTime now = DateTime.now();
      await Future.delayed(
        const Duration(seconds: 1),
      );
      yield "${now.hour}:${now.minute}:${now.second}";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynchronous Programming"),
        backgroundColor: const Color.fromRGBO(78, 100, 200, 0.9),
      ),
      body: Center(
        child: StreamBuilder(
            stream: getData(), 
            builder: (context , snapshot){
              if (snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator();
              } else if(snapshot.hasError){
                return Text("${snapshot.error}");
              } else {
                return Center(
                  child: Text(
                    "${snapshot.data}",
                  ),
                );
              }
            }, 
        )
      ),
    );
  }
}
