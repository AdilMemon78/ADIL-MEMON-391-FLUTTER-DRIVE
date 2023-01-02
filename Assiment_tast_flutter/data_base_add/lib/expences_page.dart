import 'dart:ui';
import 'package:data_base_add/add_expenses_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySavingsPage extends StatefulWidget {
  const MySavingsPage({super.key});

  @override
  State<MySavingsPage> createState() => _MySavingsPageState();
}

class _MySavingsPageState extends State<MySavingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "My Expences",
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 45, 148, 46)),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => AddExpencesPgae())));
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
