import 'package:flutter/material.dart';
import 'package:shop_card/shoping_page.dart';
import 'dart:io';

import 'package:shop_card/tab_bar.dart';

class login_page extends StatelessWidget {
  String? name = "";
  //TextEditingController? logincontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Adil mobile shop",
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              color: Colors.orange,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 52, 49, 49),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Welcome to My shoping cart",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Center(
                    child: Text(
                      "Welcome,",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Email",
                  fillColor: Colors.grey[300],
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "mobile no.",
                  fillColor: Colors.grey[300],
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              onSubmitted: (String userinput) {
                // setStatte(() {
                //   name = userinput;
                // });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Your best name is $name"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => tab_bar())));
                }),
                child: Text(
                  "Go for Shooping",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )),
          ]),
        ),
      ),
    );
  }
}
