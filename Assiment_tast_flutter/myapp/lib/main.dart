import 'package:flutter/material.dart';
import 'package:myapp/first_page.dart';

Future<void> main() async => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first_page(),
    );
  }
}
