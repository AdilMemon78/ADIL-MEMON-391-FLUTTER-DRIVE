import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:trawel_project/pages_file/login_peg.dart';
import 'package:trawel_project/welcome_page_1.dart';

class slider_page extends StatefulWidget {
  const slider_page({super.key});

  @override
  State<slider_page> createState() => _slider_pageState();
}

class _slider_pageState extends State<slider_page> {
  @override
  void initState() {
    // TODO: implement setState
    super.initState();
    startTime();
  }

  startTime() async {
    var dynamic = Duration(seconds: 5);

    return new Timer(dynamic, Login_page);
  }

  Login_page() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => login()), (route) => false);
  }

  Widget build(BuildContext context) {
    return initwidget();
  }

  initwidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffF5591f),
                gradient: LinearGradient(colors: [
                  (
                      //new Color(0xffF5591f)
                      Color.fromARGB(255, 157, 166, 181)),
                  Color.fromARGB(255, 12, 65, 179)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    child: Image.network(
                      "https://i.pinimg.com/originals/e7/2f/11/e72f11bd7f79164110d5a7f5b8635feb.jpg",
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20,),
            child: Image.asset("assets/image/50.png"),
          )
        ],
      ),
    );
  }
}
