import 'package:class_pre/main.dart';
import 'package:class_pre/pages/1.dart';
import 'package:class_pre/pages/1_Myexpaence.dart';
import 'package:class_pre/pages/1_expance_page_2.dart';
import 'package:flutter/material.dart';

class Secound extends StatelessWidget {
  const Secound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 149, 161),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Image.asset(
              "assets/images_1/0.o.png",
              height: 250,
              width: double.infinity,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            //  margin: EdgeInsets.only(top: 150),
            color: Colors.amber,
            height: 100,
            width: 200,
            child: GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Expence()),
                  ),
                );
              }),
              child: Center(
                child: Text(
                  "My Expence",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.green,
            height: 100,
            width: 200,
            child: GestureDetector(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => First())));
              }),
              child: Center(
                child: Text(
                  "My Saving",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.orange,
            height: 100,
            width: 200,
            child: GestureDetector(
              onTap: ((() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => First()));
              })),
              child: Center(
                child: Text(
                  "My Buget",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
