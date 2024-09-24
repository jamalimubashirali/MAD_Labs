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
  Future<String> fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    try {
      var data = await http.get(url);
      users = json.decode(data.body.toString());
      return "Success";
    } catch (e) {
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
      body: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else {
              return ListView.builder(
                  itemCount: users?.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(
                              "Post Id : ${users?[index]["id"]}",
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Post Title : ${users?[index]["title"]}",
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Post Description : ${users?[index]["body"]}",
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            }
          }),
    );
  }
}
