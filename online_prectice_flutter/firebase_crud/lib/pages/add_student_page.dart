import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class addstudentpage extends StatefulWidget {
  const addstudentpage({super.key});

  @override
  State<addstudentpage> createState() => _addstudentpageState();
}

class _addstudentpageState extends State<addstudentpage> {
  final _formkey = GlobalKey<FormState>();
  var name = "";
  var email = "";
  var password = "";

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  cleartext() {
    namecontroller.clear();
    emailcontroller.clear();
    passwordcontroller.clear();
  }

  CollectionReference student =
      FirebaseFirestore.instance.collection('student');

  Future<void> adduser() {
    return student
        .add({'name': name, 'email': email, 'password': password})
        .then((value) => print('User Added'))
        .catchError((onError) => print('Faield to Add user:$onError'));
    print("User Addedd");
  }

  void validate() {}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new student"),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.red)),
                  controller: namecontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please ENter name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'E-Mail',
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.red)),
                  controller: emailcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please ENter e-Mail';
                    } else if (!value.contains('@')) {
                      return 'Please Enter valid E-Mail';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.red)),
                  controller: passwordcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please ENter password';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: (() {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              name = namecontroller.text;
                              email = emailcontroller.text;
                              password = passwordcontroller.text;
                              adduser();
                              cleartext();
                            });
                          }
                        }),
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 18),
                        )),
                    ElevatedButton(
                      onPressed: () => {cleartext()},
                      child: Text(
                        "Reset",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
