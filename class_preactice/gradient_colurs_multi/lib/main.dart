import 'package:flutter/material.dart';
import 'package:gradient_colurs_multi/box_shaw_gardiant.dart';
import 'package:gradient_colurs_multi/layner_gardiant.dart';
import 'package:gradient_colurs_multi/swap_gardiant.dart';

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
  Widget build(BuildContext context) {
    return MaterialApp(home: Home2());
  }
}
