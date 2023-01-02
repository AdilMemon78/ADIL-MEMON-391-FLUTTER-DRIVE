import 'package:flutter/material.dart';
import 'package:myapp/thrd_page.dart';

class secound_page extends StatefulWidget {
  const secound_page({Key? key}) : super(key: key);

  @override
  State<secound_page> createState() => _secound_pageState();
}

class _secound_pageState extends State<secound_page> {
  List<String> title_list = ["Android", "Flutter", "java"];
  var desc_list = ["Mobile", "Hybird", "Programming"];
  var image_list = [
    "https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW5kcm9pZHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png",
    "https://media.istockphoto.com/photos/java-programming-concept-virtual-machine-on-server-room-background-picture-id1131109259?k=20&m=1131109259&s=612x612&w=0&h=fusjYOp-WHTyU-pavkkMzljwQ2DKuzt9aj7pcwpMOY4="
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view example"),
      ),
      body: ListView.builder(
        itemCount: title_list.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              print("---->" + title_list[index]);
              //print("---->" + image_list[index]);
            },
            child: Card(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.network(image_list[index]),
                  ),
                  Container(
                    child: Text(title_list[index]),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        print("hello");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => thrd_page()));
                      },
                      child: Text("Click now"),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
