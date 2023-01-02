import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var computer = Random().nextInt(100);
  TextEditingController adil = TextEditingController();
  String result = "";
  var num;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Number Gassing game",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.tealAccent),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 200,
              margin: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  "number gassing game",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ),
            TextFormField(
              controller: adil,
              decoration: InputDecoration(
                  labelText: "0 to random number",
                  hintText: "Enter number",
                  enabledBorder: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () {
                  num = int.parse(adil.text.toString());
                  setState(() {
                    if (num > computer) {
                      result = "lower case";
                    } else if (num < computer) {
                      result = "upper case";
                    } else {
                      result = "Got it";
                      adil.text = "";
                    }
                  });
                },
                child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    child: Text("Send"))),
            Text(
              result.toString(),
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
