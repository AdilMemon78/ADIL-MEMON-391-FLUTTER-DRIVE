import 'package:flutter/material.dart';

import 'package:trawel_project/Hayat_hotel_places/5_hayat_4%20-%20Copy.dart';

class HAyat_3 extends StatelessWidget {
  const HAyat_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                "Details ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/image/hayt_8.webp",
                  height: 290,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                child: Expanded(
                  child: Text(
                    "Unlock a world of upscale experiences at this lavish propertyoffering plush rooms, multiple dining venues, an outdoor pool and a host of luxury amenities.",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  "price",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  "      \$4000",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: ((context) => Hayat_4())),
                        (route) => false);
                  }),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  child: Text("Book now")),
            ],
          )
        ],
      ),
    );
  }
}
