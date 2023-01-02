import 'package:adil/pagefile/five.dart';
import 'package:adil/pagefile/forth.dart';
import 'package:adil/pagefile/second.dart';
import 'package:adil/pagefile/thard.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  int adil = 0;

  List<Widget> mywidget = [
    login(),
    Homepage(),
    photo(),
    exit(),
  ];
  void monkey(int index) {
    setState(() {
      adil = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hotel surbhi",
          style: TextStyle(
              color: Colors.white54,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(child: Text("app")),
      body: Center(child: mywidget.elementAt(adil)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "login",
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.image,
              ),
              label: "Photo"),
          // BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.person,
          //     ),
          // label: "Person"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.exit_to_app,
              ),
              label: "Exit")
        ],
        backgroundColor: Colors.teal,
        currentIndex: adil,
        onTap: monkey,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
      ),
    );
  }
}
