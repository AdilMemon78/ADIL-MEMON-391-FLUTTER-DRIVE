import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_store/pages/cart.dart';
import 'package:grocery_store/pages/home_page.dart';
import 'package:grocery_store/pages/item_page.dart';
import 'package:grocery_store/pages/order_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Color(0xfff7f5fb)),
        debugShowCheckedModeBanner: false,
        color: Colors.white30,
        routes: {
          "/": (context) => Home_page(),
          "itempage": (context) => itempage(),
          "cart": (context) => cart(),
          "orderpage": (context) => order_page(),
        });
  }
}
