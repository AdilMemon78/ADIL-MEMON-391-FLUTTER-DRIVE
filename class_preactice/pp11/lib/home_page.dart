import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Welcome",
        ),
        ),
        body: Container
        (child: Center(child: Text("Adil",
        style: TextStyle(fontSize: 30),),)),
        drawer: Drawer(),
      );    
  }
}