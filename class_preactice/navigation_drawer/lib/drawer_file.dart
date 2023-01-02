import 'package:flutter/material.dart';
import 'package:navigation_drawer/header.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

enum DrawerSelection { deshbord, contacts, setting }

var maincontainer;
var current_page = DrawerSelection.deshbord;
var current_pat = DrawerSelection.contacts;

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      body: maincontainer,
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: [Myheader(), MyMenulList()],
        )),
      ),
    );
  }

  Widget MyMenulList() {
    return Container(
      child: Column(
        children: [
          MymenuItem(1, "home", Icons.home, true),
          MymenuItem(2, "setting", Icons.settings, true),
          MymenuItem(3, "profile", Icons.person, true),
          MymenuItem(4, "Laptop", Icons.laptop, true)
        ],
      ),
    );
  }

  Widget MymenuItem(int id, String title, IconData iconName, bool isselected) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              iconName,
              color: Colors.teal,
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}