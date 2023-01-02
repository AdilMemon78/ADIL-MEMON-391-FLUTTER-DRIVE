import 'package:flutter/material.dart';
import 'package:screen_change/main.dart';

class thrd_screen extends StatefulWidget {
  const thrd_screen({Key? key}) : super(key: key);

  @override
  State<thrd_screen> createState() => _firstScreenState();
}

class _firstScreenState extends State<thrd_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp 3"),
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
