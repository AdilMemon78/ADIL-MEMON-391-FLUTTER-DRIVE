import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffee7b64),
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
    ));

void nextScreen(context, Page) {
  Navigator.push(context, MaterialPageRoute(builder: ((context) => Page())));
}

void nextScreenReplace(context, Page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: ((context) => Page())));
}

void showSnackbar(context, Color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: TextStyle(fontSize: 14),
    ),
    backgroundColor: Color,
    duration: Duration(seconds: 2),
    action: SnackBarAction(
      label: "Ok",
      onPressed: (() {}),
      textColor: Colors.white,
    ),
  ));
}
