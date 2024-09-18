import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Restapipractice extends StatefulWidget {
  const Restapipractice({super.key});

  @override
  State<Restapipractice> createState() => _RestapipracticeState();
}

class _RestapipracticeState extends State<Restapipractice> {
  List? users;
  Future<String> fetchData() async{
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    try{
      var data = await http.get(url);
      users = json.decode(data.body.toString());
      return "Success";
    } catch(e){
      return "Error";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REST Api Practice"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: FutureBuilder(future: fetchData(),
            builder: (context , snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const CircularProgressIndicator();
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }else {
              return ListView.builder(
                itemCount: users?.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context , index){
                  return ListTile(
                    leading: Text("${users?[index]["id"]}"),
                    title: Text("${users?[index]["title"]})"),
                  );
                  });
            }
            }),
      ),
    );
  }
}
