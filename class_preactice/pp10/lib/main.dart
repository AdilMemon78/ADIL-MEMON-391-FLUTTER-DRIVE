import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "pp10.project",
          style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        leading: Icon(
          Icons.mobile_friendly_outlined,
          color: Colors.indigo,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            color: Colors.pink,
            height: 50,
            child: TextButton(
                child: Text(
                  "Mobile App",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  print("Click here...");
                }),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            color: Colors.pink,
            height: 50,
            child: TextButton(
                child: Text(
                  "Mobile App2.",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  print("Click here 2...");
                }),
          ),
        ],
      ),
    ));
  }
}
