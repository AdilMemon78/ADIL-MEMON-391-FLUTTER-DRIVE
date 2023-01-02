import 'package:flutter/material.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Home screen",
        style: TextStyle(color: Colors.amber, fontSize: 30),
      ),
    );
    Center(
      child: Container(
        margin: EdgeInsets.all(5),
        height: 100,
        width: 200,
        child: Image.network(
            "https://foyr.com/learn/wp-content/uploads/2021/08/design-your-dream-home.jpg"),
      ),
    );
  }
}
