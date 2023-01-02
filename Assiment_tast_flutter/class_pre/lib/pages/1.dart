import 'package:class_pre/pages/2.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database Mangment"),
      ),
      body: Container(
        child: Center(child: Text("MAIN PAGE")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Secound(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
