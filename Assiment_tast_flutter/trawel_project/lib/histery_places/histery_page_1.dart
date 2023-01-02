import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trawel_project/histery_places/Jali_histery.dart';
import 'package:trawel_project/histery_places/Jama_masjid.dart';
import 'package:trawel_project/histery_places/Kakriya_lake.dart';
import 'package:trawel_project/histery_places/Riverfront.dart';
import 'package:trawel_project/histery_places/SAbar_mati.dart';
import 'package:trawel_project/histery_places/since_city.dart';

class Histery_2 extends StatelessWidget {
  const Histery_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: ListView(
        children: [
          Card(
            color: Colors.blue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 120,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border

                      child: SizedBox.fromSize(
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq9zTow_ozBzpeKJ_M7m5Ktb8xGLcTyxDWqg&usqp=CAU',
                          height: 100,
                          //width: 200,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Jali_histery()),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Text(
                                "Sidhi Sayyed \n     ni Jali",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "History",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 120,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border

                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/since_city_1.jpg",
                          height: 70,
                          //  width: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Since_city()),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Text(
                                "Since City",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "History",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 120,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border

                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/jama_1.jpg",
                          height: 100,
                          //  width: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Jama_masjid()),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Text(
                                "Jama \nMasjid",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "History",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 120,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border

                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/kakriya_1.jpg",
                          height: 100,
                          //  width: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Kakriya_lake()),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Text(
                                "Kankaria \nLake",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "History",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 120,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border

                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/sabarmati_1.jpg",
                          height: 80,
                          //  width: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => sabar_mari()),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Text(
                                "SabarMati\n ashram",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "History",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 120,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18), // Image border

                      child: SizedBox.fromSize(
                        child: Image.asset(
                          "assets/image/river_1.jpg",
                          height: 80,
                          //  width: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => river_front()),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 29),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Center(
                                child: Text(
                                  "River Front",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "History",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
