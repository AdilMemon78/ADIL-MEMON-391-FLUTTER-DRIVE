import 'package:finace_app/widgets/bottom_navigation.dart';
import 'package:finace_app/screens/statics.dart';
import 'package:flutter/material.dart';

import 'screens/login_page.dart';

void main() {
  runApp(const Myfinace());
}

class Myfinace extends StatefulWidget {
  const Myfinace({super.key});

  @override
  State<Myfinace> createState() => _MyfinaceState();
}

class _MyfinaceState extends State<Myfinace> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: //homepage(),
            //statices()
            Bottom());
  }
}
