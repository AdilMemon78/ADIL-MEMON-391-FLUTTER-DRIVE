import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _MyappState();
}

class _MyappState extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello")),
      body: Center(
          child: Container(
        height: 300,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            gradient: SweepGradient(
              colors: [
                Colors.orange,
                Colors.purple,
                Colors.yellow,
                Colors.deepPurpleAccent
              ],
            )),
      )),
    );
  }
}
