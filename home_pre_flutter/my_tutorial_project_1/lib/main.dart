import 'package:flutter/material.dart';
import 'package:my_tutorial_project_1/Pages/Login_page.dart';
import 'package:my_tutorial_project_1/Pages/home_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: home_page(),
    );
  }
}
