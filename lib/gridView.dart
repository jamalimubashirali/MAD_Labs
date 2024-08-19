import 'package:flutter/material.dart';

class GridViewPractice extends StatefulWidget {
  const GridViewPractice({super.key});
  @override
  State<StatefulWidget> createState() => GridviewPracticeState();
}

class GridviewPracticeState extends State<GridViewPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Practice"),
        backgroundColor: const Color.fromRGBO(28, 158, 234, 0.927),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
              itemBuilder: (context) {
                return[
                  const PopupMenuItem(value : 1, child: Text("Option 1")),
                  const PopupMenuItem(value : 2, child: Text("Option 2")),
                  const PopupMenuItem(value: 3, child: Text("Option 3")),
                ];
              },
              onSelected: (value) {
                print("Option $value");
              },
          ),
        ],
      ),
      body: GridView.builder(
         gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
         itemBuilder: (context, index){
           return Center(
             child: Text("Item # $index"),
           );
         },
         itemCount: 12,
         ),
    );
  }
}