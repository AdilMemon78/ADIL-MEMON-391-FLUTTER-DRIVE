import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 130, 188, 132),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 114, 242, 119),
          title: Text(
            "Row and coloum",
            style: TextStyle(
                color: Color.fromARGB(255, 90, 36, 11),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.symmetric(horizontal: 36),
                height: 150,
                // width: double.maxFinite,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.purple,
                      size: 60,
                    ),
                    Icon(
                      Icons.logout,
                      color: Colors.redAccent,
                      size: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.symmetric(horizontal: 36),
                height: 150,
                //   width:double.maxFinite,
                color: Colors.purple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.accessible_forward,
                      color: Color.fromARGB(255, 230, 217, 232),
                      size: 60,
                    ),
                    Icon(
                      Icons.login_sharp,
                      color: Colors.redAccent,
                      size: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
