
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 233, 240, 137),
            appBar: AppBar(
              title: Text(
                "Adil",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 35,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic),
              ),
              backgroundColor: Colors.brown,
              leading: Icon(
                Icons.menu,
                color: Colors.black87,
                size: 40,
              ),
            ),
            body: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Oeschinen Lake Campground",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                          Text("Kandersteg Switzerland",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 154, 154, 154),
                                  fontSize: 15)),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.red),
                              Text("41")
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.phone, color: Colors.blue),
                          Text("Call", style: TextStyle(color: Colors.blue))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.navigation, color: Colors.blue),
                          Text("Route", style: TextStyle(color: Colors.blue))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share, color: Colors.blue),
                          Text("Share", style: TextStyle(color: Colors.blue))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
            )
            );
  }
}