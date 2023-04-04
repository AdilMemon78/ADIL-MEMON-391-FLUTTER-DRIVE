import 'package:covid_vacine_app/home.dart';
import 'package:covid_vacine_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'result',
      routes: {'result': (context) => result()},
      debugShowCheckedModeBanner: false,
    );
  }
}
