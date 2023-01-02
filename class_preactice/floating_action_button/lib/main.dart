import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text("Myapp"),
          actions: [
            IconButton(
              onPressed: () {
                print("Search Bar");
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                print("Laptops");
              },
              icon: Icon(Icons.laptop),
            ),
            IconButton(
              onPressed: () {
                print("Home");
              },
              icon: Icon(Icons.home),
            ),
          ],
        ),
        drawer: Drawer(
          child: Center(
            child: Text(
              "Adil's",
              style: TextStyle(fontSize: 50, color: Colors.redAccent),
            ),
          ),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://media.istockphoto.com/photos/shelving-unit-with-collection-of-beautiful-houseplants-indoors-picture-id1368955178?s=612x612"),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("Exits");
          },
          icon: Icon(Icons.exit_to_app),
          label: Text(
            "Exit",
          ),
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}
