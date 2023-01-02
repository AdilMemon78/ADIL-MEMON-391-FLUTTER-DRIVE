import 'package:flutter/material.dart';
import 'dart:io' show Platform, exit;
import 'package:flutter/services.dart';

void main() {
  runApp(Myapp1());
}

class Myapp1 extends StatelessWidget {
  const Myapp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myapp1(),
    );
  }
}
