import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:trawel_project/histery_places/Jali_histery.dart';
import 'package:trawel_project/histery_places/histery_page_1.dart';
import 'package:trawel_project/1_hotel_page_All_hotel.dart';
import 'package:trawel_project/pages_file/notification.dart';
import 'package:trawel_project/pages_file/settings.dart';

class Histery_1 extends StatelessWidget {
  const Histery_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      // backgroundColor: Colors.amber,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(99)),
                  // color: Color(0xffF5591f),
                  gradient: LinearGradient(
                    colors: [
                      (Color.fromARGB(255, 234, 180, 160)),
                      Color.fromARGB(255, 41, 224, 206),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Image.network(
                              "https://epayrent.in/img/cities/ahmedabad.png",
                              height: 100,
                              width: 80,
                            ),
                          ),
                          SizedBox(
                            height: 90,
                          ),
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (() {
                                    print("Notification");
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                notification())));
                                  }),
                                  icon: Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: (() {
                              print("Settings");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => settings())));
                            }),
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text.rich(
                          TextSpan(
                            text: "Welcome\n",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                              TextSpan(
                                text: "         To \n     Ahemadabad",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        hintText: "Search",
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Places Avalible",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CarouselSlider(
                        items: [
                          Image.asset("assets/image/01.jpg"),
                          Image.asset("assets/image/02.png"),
                          Image.asset("assets/image/03.png"),
                          Image.asset("assets/image/04.png"),
                          Image.asset("assets/image/05.png"),
                        ],

                        //carouselController: buttonCarouselController,
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.9,
                          aspectRatio: 2.0,
                          initialPage: 2,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => Histery_2()),
                                ),
                              );
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        18), // Image border
                                    child: SizedBox.fromSize(
                                      child: Image.asset(
                                        'assets/image/00.jpg',
                                        height: 105,
                                      ),
                                    ),
                                  ),
                                  Text("HISTORY"),
                                ],
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
                                  builder: ((context) => Hotel_page()),
                                ),
                              );
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        18), // Image border
                                    child: SizedBox.fromSize(
                                      child: Image.asset(
                                        'assets/image/000.jpeg',
                                        height: 105,
                                      ),
                                    ),
                                  ),
                                  Text("Hotels"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
