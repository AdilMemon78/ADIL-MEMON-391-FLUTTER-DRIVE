import 'package:flutter/material.dart';

void main() {
  runApp(Myapp_1());
}

class Myapp_1 extends StatelessWidget {
  const Myapp_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.amber,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Hotel",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Shoping",
                ),
              ],
            ),
          ),
          body: TabBarView(children: []),
        ),
      ),
    );
  }
}
