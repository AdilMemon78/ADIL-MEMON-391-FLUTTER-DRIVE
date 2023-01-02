import 'package:flutter/material.dart';
import 'package:my_db_example/add_user.dart';
import 'package:my_db_example/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: add_user());
  }
}
