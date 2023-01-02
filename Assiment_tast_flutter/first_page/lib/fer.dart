import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Myapp1 extends StatelessWidget {
  const Myapp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Whats App",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.whatsapp,
            size: 30,
            color: Colors.green,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.green,
                size: 28,
              ),
              padding: EdgeInsets.only(right: 30),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.green,
                size: 28,
              ),
              padding: EdgeInsets.only(right: 30),
            ),
          ],
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.only(right: 110, top: 20),
            child: Text(
              "LogIn..",
              style: TextStyle(
                  color: Color.fromARGB(255, 23, 91, 28),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 290, top: 0),
            child: Text(
              "Email",
              style: TextStyle(
                  color: Color.fromARGB(255, 23, 91, 28),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email",
                fillColor: Colors.purple,
                labelStyle: TextStyle(
                    color: Colors.green,
                    fontStyle: FontStyle.italic,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 51, 99, 53)),
                    borderRadius: BorderRadius.circular(60)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 290, top: 20),
            child: Text(
              "Password",
              style: TextStyle(
                  color: Color.fromARGB(255, 23, 91, 28),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: 100,
            color: Colors.green,
            child: Center(
                child: Text(
              "Login",
              style: TextStyle(
                  color: Color.fromARGB(255, 20, 48, 70), fontSize: 18),
            )),
          ),
          Container(
            color: Colors.red,
            height: 50,
            width: 100,
            child: Center(
              child: TextButton(
                onPressed: (() {
                  displayAlert(context);
                }),
                child: Text(
                  "Exit..",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ]));
  }
}

void displayAlert(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    title: Text("Exit"),
    content: Text("Are You Want To Exit.."),
    actions: [
      TextButton(
          onPressed: () {
            if (Platform.isAndroid) {
              SystemNavigator.pop();
            } else if (Platform.isIOS) {
              exit(0);
            }
          },
          child: Text("Yes")),
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("No"))
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
