import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Web Books",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.home),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  hintText: "organization....",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  hintText: "User Id",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  hintText: "Enter Password",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                onPressed: (() {}),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
          )
        ],
      )),
    );
  }
}
