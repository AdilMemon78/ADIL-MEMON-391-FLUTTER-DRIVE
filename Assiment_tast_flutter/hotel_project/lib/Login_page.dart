import 'package:flutter/material.dart';
import 'package:hotel_project/Pages/account.dart';
import 'package:hotel_project/home_page.dart';
import 'package:hotel_project/main.dart';
import 'package:hotel_project/login.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  int Adil = 0;

  List<Widget> mywidget = [
    homepage(),
    kingkong(),
    account(),
    login(),
    loginpage()
  ];
  void ontab(int index) {
    setState(() {
      Adil = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.snapchat),
        title: Text("Snapchat"),
      ),
      body: Center(child: mywidget.elementAt(Adil)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'login')
        ],
        backgroundColor: Colors.amber,
        currentIndex: Adil,
        onTap: ontab,
      ),
    );
  }
}
