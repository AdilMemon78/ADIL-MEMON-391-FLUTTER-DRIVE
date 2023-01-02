import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? text = "";
  TextEditingController? Adil = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("state full widget 2."),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              child: TextField(
                  controller: Adil,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    labelText: "Enter name",
                    hintText: "Enter name",
                  )),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              child: ElevatedButton(
                child: Text("Click Here"),
                onPressed: () {
                  displayMessage();
                },
              ),
            ),
            Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(12),
                child: Text(text!)),
          ],
        ),
      ),
    );
  }

  void displayMessage() {
    setState(() {
      text = Adil!.text.toString();
      print("--------msg  is $text ");
    });
  }
}
