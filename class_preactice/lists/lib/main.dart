import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List<String> title_list = ["Android", "Flutter", "java"];
  //var desc_list = ["Mobile", "Hybird", "Programming"];
  var image_list = [
    "https://images.unsplash.com/photo-1607252650355-f7fd0460ccdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW5kcm9pZHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png",
    "data:image/png;base64,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",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List view example"),
        ),
        body: ListView.builder(
          itemCount: title_list.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                print("---->" + title_list[index]);
                //  print("---->" + image_list[index]);
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
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
