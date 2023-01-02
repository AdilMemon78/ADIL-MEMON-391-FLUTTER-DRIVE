import 'package:flutter/material.dart';

class secound extends StatefulWidget {
  const secound({Key? key}) : super(key: key);

  @override
  State<secound> createState() => _secoundState();
}

class _secoundState extends State<secound> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Image.network(
        "https://mediahomes.in/wp-content/uploads/2017/11/16406407_1145526325546159_5178018251033556532_n.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
