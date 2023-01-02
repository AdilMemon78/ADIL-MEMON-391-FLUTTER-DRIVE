import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _MyappState();
}

class _MyappState extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello")),
      body: Center(
          child: Container(
        color: Colors.blue,
        height: 120,
        width: 300,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 51, 74, 93),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(5, 5),
          )
        ]),
      )),
    );
  }
}
