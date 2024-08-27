import 'package:flutter/material.dart';
import 'package:my_app_2/utils/floatingActionButton.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoApp"),
        backgroundColor: const Color.fromRGBO(10, 224, 243, 1.0),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
        return const ListTile(
          title: Text("Title"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.edit),
              SizedBox(width: 10,),
              Icon(Icons.delete),
            ],
          ),
        );
      }),
      floatingActionButton: const floatingActionButton(),
    );
  }
}
