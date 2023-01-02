import 'package:flutter/material.dart';

class Bill_1 extends StatelessWidget {
  String? result;
  String name = "";

  Bill_1({required this.name, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 25),
            ),
            Text(
              result!,
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
