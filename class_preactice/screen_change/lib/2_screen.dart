import 'package:flutter/material.dart';
import 'package:screen_change/3_screen.dart';
import 'package:screen_change/main.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  State<secondscreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp 2"),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            print("hello");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => thrd_screen()));
          },
          child: Text("Click here"),
        ),
      ),
    );
  }
}
