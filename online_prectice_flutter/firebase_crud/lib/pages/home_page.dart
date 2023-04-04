import 'package:firebase_crud/pages/student_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'add_student_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Firebase Cloud",
              style: TextStyle(color: Colors.black),
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => addstudentpage())));
              }),
              child: Text(
                "Add",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
            )
          ],
        ),
      ),
      body: listpagestudent(),
    );
  }
}
