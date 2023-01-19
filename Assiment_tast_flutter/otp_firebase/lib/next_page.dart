import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_firebase/phone_page.dart';
import 'package:verify_live_otp/phone_number_page.dart';

class My_Home extends StatefulWidget {
  const My_Home({super.key});

  @override
  State<My_Home> createState() => _MyHomeState();
}

class _MyHomeState extends State<My_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME")),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: ((context) => Phone_Page())),
                (route) => false);
          },
          child: Text("ReturnPhone Number Page"),
        ),
      ),
    );
  }
}
