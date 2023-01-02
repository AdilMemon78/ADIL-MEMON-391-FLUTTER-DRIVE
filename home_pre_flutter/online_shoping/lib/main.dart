import 'package:flutter/material.dart';
import 'package:online_shoping/Pages/Cart_page.dart';
import 'package:online_shoping/Pages/homepage.dart';
import 'package:online_shoping/Pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": ((context) => home_page()),
        "cart page": ((context) => Cart_page()),
        "item page": ((context) => item_page())
      },
    );
  }
}
