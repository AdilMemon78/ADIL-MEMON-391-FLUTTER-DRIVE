import 'package:flutter/material.dart';
import 'package:navigation_drawer/main.dart';

class Myheader extends StatefulWidget {
  const Myheader({Key? key}) : super(key: key);

  @override
  State<Myheader> createState() => _MyheaderState();
}

class _MyheaderState extends State<Myheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.maxFinite,
      color: Colors.teal,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGJLv9jvTiDXhln7fH7p4Ffnuquk1Cxqjmvg&usqp=CAU",
                  height: 70,
                  width: 70,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Adil",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Adil Memon @gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
