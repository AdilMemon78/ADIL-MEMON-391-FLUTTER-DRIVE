import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _MyappState();
}

class _MyappState extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello")),
      body: Center(
          child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      )),
    );
  }
}
