import 'package:flutter/material.dart';

import 'package:qwiz_app_2/qwiz_app_folder.dart/1_page.dart';
import 'package:qwiz_app_2/start_1_page.dart';
import 'package:qwiz_app_2/start_2_page.dart';

void main() {
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
    return MaterialApp(debugShowCheckedModeBanner: false, home: screen_page());
  }
}
