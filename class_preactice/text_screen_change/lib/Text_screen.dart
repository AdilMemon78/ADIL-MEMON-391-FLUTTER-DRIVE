import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Text Example",
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
              color: Colors.black),
        ),
      ),
      backgroundColor: Colors.green,
      drawer: Drawer(),
      body: Container(
        child: Row(
          children: [
            Container(
              child: Expanded(
                child: Text(
                  "Sum is $display()",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int display() {
    int num1, num2;
    num1 = 10;
    num2 = 20;

    return num1 + num2;
  }
}
