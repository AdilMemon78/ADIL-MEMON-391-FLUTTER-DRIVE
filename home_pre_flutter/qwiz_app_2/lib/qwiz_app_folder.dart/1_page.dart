import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qwiz_app_2/qwiz_app_folder.dart/2_page.dart';

class page_1 extends StatefulWidget {
  const page_1({super.key});

  @override
  State<page_1> createState() => _GameState();
}

class _GameState extends State<page_1> {
  bool isLogoVisible = true;
  TextEditingController myedit = TextEditingController();
  var tru = 0;
  var fls = 0;
  var totle = 0;
  String? result = "";

  @override
  void initState() {
    Future.delayed(Duration(seconds: 50), () {
      isLogoVisible = false;
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("GAME")),
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          child: Visibility(
            visible: isLogoVisible,
            child: Image.network(
              "https://static.tnn.in/photo/msid-91808796,imgsize-491555,width-100,height-200,resizemode-75/91808796.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Text(
            "Who is the charter. ?",
            style: TextStyle(
                fontSize: 30,
                color: Colors.black87,
                fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ElevatedButton(
                    child: Text("iyer"),
                    onPressed: () {
                      tru = 10;
                      totle = (tru + totle);
                      setState(() {
                        result = "Wrong";
                      });
                      myedit.text = "";
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: ElevatedButton(
                    child: Text("Jetha lal"),
                    onPressed: () {
                      fls = -10;
                      totle = (fls + totle);
                      setState(() {
                        result = "Right";
                      });
                      myedit.text = "";
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: ElevatedButton(
                    child: Text("bapuji"),
                    onPressed: () {
                      fls = -10;
                      totle = (fls + totle);
                      setState(() {
                        result = "Wrong";
                      });
                      myedit.text = "";
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: ElevatedButton(
                    child: Text("popat lal"),
                    onPressed: () {
                      fls = -10;
                      totle = (fls + totle);
                      setState(() {
                        result = "Wrong";
                      });
                      myedit.text = "";
                    },
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(color: Colors.red, fontSize: 38),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => page_2())));
          },
          child: Text("Next"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
        ),
      ]),
    );
  }
}
