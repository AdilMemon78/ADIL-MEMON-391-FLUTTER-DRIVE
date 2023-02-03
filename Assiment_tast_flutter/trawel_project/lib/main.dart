import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trawel_project/firebase/phone_page.dart';

import 'package:trawel_project/pages_file/login_peg.dart';
import 'package:trawel_project/First_slider_page.dart';

void main() async {
  //otp firebase

  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: slider_page()
        // phone_page()
        );
  }
}
