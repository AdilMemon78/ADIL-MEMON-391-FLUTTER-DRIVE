import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qwiz_app_2/start_2_page.dart';

class screen_page extends StatefulWidget {
  const screen_page({super.key});

  @override
  State<screen_page> createState() => _screen_pageState();
}

class _screen_pageState extends State<screen_page> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var dynamic = Duration(seconds: 10);

    return new Timer(dynamic, Login_page);
  }

  Login_page() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => game_Quiz()),
    );
  }

  Widget build(BuildContext context) {
    return initwidget();
  }

  initwidget() {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: new Color(0xffF5591f),
            gradient: LinearGradient(colors: [
              (new Color(0xffF5591f)),
              Color.fromARGB(255, 53, 214, 201)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://www.pngmart.com/files/19/Quiz-PNG-Free-Download.png",
                height: 250,
                width: 250,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Welcome  to qwiz app",
                style: TextStyle(
                    fontSize: 45,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                    color: Colors.teal),
              ),
            ],
          )
        ],
      ),
    ]));
  }
}
