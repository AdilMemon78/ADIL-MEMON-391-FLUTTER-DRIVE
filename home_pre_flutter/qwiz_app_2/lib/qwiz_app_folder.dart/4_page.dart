import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qwiz_app_2/qwiz_app_folder.dart/5_page.dart';

class page_4 extends StatefulWidget {
  const page_4({super.key});

  @override
  State<page_4> createState() => _GameState();
}

class _GameState extends State<page_4> {
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
              "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/320400/320448.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Text(
            "Who is the charter ?",
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
                child: Text("virat "),
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
                child: Text("rohit"),
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
                child: Text("Rizwan"),
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
                child: Text("Babar"),
                onPressed: () {
                  fls = -10;
                  totle = (fls + totle);
                  setState(() {
                    result = "Right";
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
                context, MaterialPageRoute(builder: ((context) => page_5())));
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
