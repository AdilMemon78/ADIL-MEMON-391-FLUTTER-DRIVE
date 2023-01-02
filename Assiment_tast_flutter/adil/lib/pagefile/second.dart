import 'dart:ui';

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://thumbs.dreamstime.com/b/tile-floor-brick-wall-background-lights-night-hd-image-large-resolution-can-be-used-as-desktop-wallpaper-real-zise-184215885.jpg",
                ),
                fit: BoxFit.cover)),
        margin: EdgeInsets.all(1),
        padding: EdgeInsets.all(50),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                child: Text(
                  "LogIn..",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Name ",
                    labelText: " User Name",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                    ),
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    prefixIconColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password ",
                    labelText: " Enter Password..",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    fillColor: Colors.purple,
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                    ),
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    prefixIconColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.teal,
                    child: Center(
                      child: Text(
                        "login",
                        style: TextStyle(
                            color: Colors.white,
                            // fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
