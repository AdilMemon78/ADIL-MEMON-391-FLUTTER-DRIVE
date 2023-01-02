import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool color_status = false;
  Color? colorname;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull Widgets 1."),
        ),
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: colorname,
          child: TextButton(
            child: Text("Click here"),
            onPressed: () {
              changecolour();
            },
          ),
        ),
      ),
    );
  }

  void changecolour() {
    if (color_status) {
      setState(() {
        colorname = Color.fromARGB(54, 72, 131, 9);
        color_status = false;
      });
    } else {
      setState(() {
        colorname = Color.fromARGB(255, 237, 60, 60);
        color_status = true;
      });
    }
  }
}
