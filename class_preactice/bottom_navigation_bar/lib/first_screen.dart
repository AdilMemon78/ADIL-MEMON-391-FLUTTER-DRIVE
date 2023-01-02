import 'package:bottom_navigation_bar/fourth.dart';
import 'package:bottom_navigation_bar/secound.dart';
import 'package:bottom_navigation_bar/thrd.dart';
import 'package:flutter/material.dart';

class first_screen extends StatefulWidget {
  const first_screen({Key? key}) : super(key: key);

  @override
  State<first_screen> createState() => _first_screenState();
}

class _first_screenState extends State<first_screen> {
  int currentindex = 0;
  List<Widget> mywidget = [
    // Text("hello",style: TextStyle(color: Colors.yellow,fontWeight:FontWeight.bold),
    //  Text("hello",style: TextStyle(color: Colors.yellow,fontWeight:FontWeight.bold),
    //   Text("hello",style: TextStyle(color: Colors.yellow,fontWeight:FontWeight.bold),
    secound(),
    thrd(),
    fourth()
  ];
  void onTapchange(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom Navigation Bar.",
        ),
      ),
      body: Center(child: mywidget.elementAt(currentindex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.deepOrange,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.orange,
              ),
              label: "user",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_page,
              color: Colors.deepOrange,
            ),
            label: "contact",
          ),
        ],
        backgroundColor: Colors.grey,
        iconSize: 30,
        elevation: 20,
        currentIndex: currentindex,
        selectedItemColor: Colors.purpleAccent,
        type: BottomNavigationBarType.shifting,
        onTap: onTapchange,
      ),
    );
  }
}
