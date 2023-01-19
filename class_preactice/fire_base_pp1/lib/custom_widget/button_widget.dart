import 'package:flutter/material.dart';

Widget customButton(String text) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}
