import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trawel_project/firebase/otp_page.dart';
import 'package:trawel_project/firebase/phone_page.dart';
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
    var dynamic = Duration(seconds: 6);

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
                  (new Color(0xffF5591f)),
                  Color.fromARGB(255, 53, 214, 201)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/image/51.png"),
            ),
          ),
          Image.asset("assets/image/50.png")
        ],
      ),
    );
  }
}
