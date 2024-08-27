import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class customDialogButton extends StatefulWidget {
  const customDialogButton({super.key});

  @override
  State<customDialogButton> createState() => _customDialogButtonState();
}

class _customDialogButtonState extends State<customDialogButton> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      child:   SizedBox(
        width: 350,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                const Align(
                    alignment: Alignment.center,
                    child: Text("TODO")
                ),
                const SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    label: const Text("Title"),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Enter Title",
                      hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
              const SizedBox(height: 20,),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    label: const Text("Description"),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Enter Description",
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              const SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month),
                    hintText: "Due Date",
                  hintStyle: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.today),
                  hintText: "Due time",
                  hintStyle: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: (){

                },
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: const Center(
                        child: Text("Create"),
                      ),
                    )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
