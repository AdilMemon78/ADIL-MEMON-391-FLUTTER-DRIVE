import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Vaccine",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Pincode",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Material(
              elevation: 5,
              color: Colors.teal,
              borderRadius: BorderRadius.circular(20),
              child: MaterialButton(
                onPressed: (() {
                  Navigator.pushNamed(context, 'result');
                }),
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
