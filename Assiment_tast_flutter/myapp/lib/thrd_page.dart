import 'package:flutter/material.dart';

class thrd_page extends StatefulWidget {
  const thrd_page({Key? key}) : super(key: key);

  @override
  State<thrd_page> createState() => _thrd_pageState();
}

class _thrd_pageState extends State<thrd_page> {
  bool color_status = false;
  Color? colorname;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull Widgets 1."),
        ),
        body: Container(
          height: 100,
          width: 100,
          color: colorname,
          child: TextButton(
            child: Text("Click here"),
            onPressed: () {
              changecolour();
            },
          ),
        ),
      ),
    );
  }

  void changecolour() {
    if (color_status) {
      setState(() {
        colorname = Color.fromARGB(54, 72, 131, 9);
        color_status = false;
      });
    } else {
      setState(() {
        colorname = Color.fromARGB(255, 237, 60, 60);
        color_status = true;
      });
      Container(
        child: ElevatedButton(
          onPressed: () {
            print("hello");
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => thrd_page()));
          },
          child: Text("Click here"),
        ),
      );
    }
  }
}
