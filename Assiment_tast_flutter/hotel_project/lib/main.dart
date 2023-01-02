import 'package:flutter/material.dart';
import 'package:hotel_project/Login_page.dart';
import 'package:hotel_project/home_page.dart';

main() {
  runApp(login());
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: loginpage());
  }
}
