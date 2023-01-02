import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qwiz_app_2/qwiz_app_folder.dart/4_page.dart';

class page_3 extends StatefulWidget {
  const page_3({super.key});

  @override
  State<page_3> createState() => _GameState();
}

class _GameState extends State<page_3> {
  bool isLogoVisible = true;
  TextEditingController myedit = TextEditingController();
  var tru = 0;
  var fls = 0;
  var totle = 0;
  String? result = "Ans";

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
              "https://play-lh.googleusercontent.com/RZ5luCUwc5QtJP9xDn-ZCwEutT160GVyoh5K1eu4YJ5fD7v4LP5ptVdgR9mz4Hnr7A",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Text(
            "Who is the image ?",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: ElevatedButton(
                child: Text("Brev"),
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
                child: Text("OperaMini"),
                onPressed: () {
                  fls = 10;
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
                child: Text("google"),
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
                child: Text("Crom"),
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
                context, MaterialPageRoute(builder: ((context) => page_4())));
          },
          child: Text("Next"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
        ),
      ]),
    );
  }
}
