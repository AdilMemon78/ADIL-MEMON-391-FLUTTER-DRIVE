import 'package:flutter/material.dart';

Widget myTextField(String hintText, String labelText, bool status,
    IconData icon, TextEditingController controller) {
  return Container(
    margin: EdgeInsets.all(12),
    padding: EdgeInsets.all(8.0),
    child: TextField(
      controller: controller,
      obscureText: status,
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    ),
  );
}
