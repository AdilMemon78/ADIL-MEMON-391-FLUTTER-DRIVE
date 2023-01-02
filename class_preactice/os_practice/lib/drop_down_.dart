import 'package:flutter/material.dart';

class drop_down extends StatefulWidget {
  const drop_down({super.key});

  @override
  State<drop_down> createState() => _drop_downState();
}

class _drop_downState extends State<drop_down> {
  String selectItem = "C lanvage";
  var subject = ["C lanvage", 'c++', "java", "android", "php"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DropdownButton(items :subject.map((DropdownMenuItem<String>) => null), onChanged: onChanged)
          ],
        ),
      ),
    );
  }
}
