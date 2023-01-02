import 'package:flutter/material.dart';

class Secound_screen extends StatefulWidget {
  String? name;
  String? contact;

  Secound_screen({Key? key, @required this.name, @required this.contact})
      : super(key: key);

  @override
  State<Secound_screen> createState() => _Secound_screenState();
}

class _Secound_screenState extends State<Secound_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Name:"),
              Text("${widget.name}"),
            ],
          ),
          Row(
            children: [
              Text("Contact=:"),
              Text("${widget.contact}"),
            ],
          )
        ],
      ),
    );
  }
}
