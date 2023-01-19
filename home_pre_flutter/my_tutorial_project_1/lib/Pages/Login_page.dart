import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_tutorial_project_1/Pages/home_page.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String name = "";

  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.push(
        context, MaterialPageRoute(builder: ((context) => home_page())));
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/02.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome,$name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter e-mail",
                        labelText: "Emil",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          print("$name");
                        });
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                     onTap: () => moveTohome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
