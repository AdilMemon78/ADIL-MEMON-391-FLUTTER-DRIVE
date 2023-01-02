import 'package:flutter/material.dart';
import 'package:pizz_pre/pasta_menu.dart';
import 'package:pizz_pre/pizza_menu.dart';

class Myapp4 extends StatefulWidget {
  const Myapp4({Key? key}) : super(key: key);

  @override
  State<Myapp4> createState() => _TabBarState();
}

class _TabBarState extends State<Myapp4> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  indicatorColor: Colors.blue,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.local_pizza),
                      text: "Pizza Menu",
                    ),
                    Tab(
                      icon: Icon(Icons.paste),
                      text: "Pasta Menu",
                    ),
                  ],
                ),
              ),
              body: TabBarView(children: [PizzaMenu(), PastaMenu()]),
            )));
  }
}
