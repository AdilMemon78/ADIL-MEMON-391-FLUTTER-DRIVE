import 'package:flutter/material.dart';
import 'package:screen_change/2_screen.dart';
import 'package:screen_change/main.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            print("hello");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => secondscreen()));
          },
          child: Text("Click here"),
        ),
      ),
    );
  }
}
