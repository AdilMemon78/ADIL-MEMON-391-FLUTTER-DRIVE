import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  TextEditingController namecontroller = TextEditingController();
  List<String> MySubjectList = [];
  var i;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Container(margin: EdgeInsets.all(20),
            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                labelText: "Subject",
                hintText: "Enter Subject Name",
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // print(namecontroller);
              for (var i = 0; i < MySubjectList.length; i++);
              {
                print(namecontroller.toString());
              }
            },
            child: Text("submit"),
          )
        ],
      )),
    );
  }
}
