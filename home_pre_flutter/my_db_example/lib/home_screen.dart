import 'package:flutter/material.dart';
import 'package:my_db_example/add_user.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database manager"),
      ),
      body: Container(
        child: Text("Main page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => add_user())));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
