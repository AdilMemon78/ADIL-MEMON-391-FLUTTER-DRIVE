import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_app/screen/Message_screen.dart';
import 'package:medical_app/screen/1.appiont_screen.dart';
import 'package:medical_app/screen/home_screen.dart';
import 'package:medical_app/screen/login_Screen.dart';
import 'package:medical_app/screen/schedule_screen.dart';
import 'package:medical_app/screen/settings_screen.dart';
import 'package:medical_app/screen/sign_up.dart';
import 'package:medical_app/screen/welcome_screen.dart';

class navbarr_roots extends StatefulWidget {
  const navbarr_roots({super.key});

  @override
  State<navbarr_roots> createState() => _navbarr_rootsState();
}

class _navbarr_rootsState extends State<navbarr_roots> {
  int _selectedindex = 0;
  final _screen = [
    home_screen(),
    Message_screen(),
    schedule(),
    settings_screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedindex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _selectedindex,
          onTap: (index) {
            setState(() {
              _selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
