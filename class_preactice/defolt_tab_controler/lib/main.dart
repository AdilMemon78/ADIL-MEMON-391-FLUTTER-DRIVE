import 'package:defolt_tab_controler/home_screen.dart';
import 'package:defolt_tab_controler/Rating_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab bar"),
            bottom: TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.amber,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "home",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "person",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [Home_screen(), Person_screen()]),
        ),
      ),
    );
  }
}
