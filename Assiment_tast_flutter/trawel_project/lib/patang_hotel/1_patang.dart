import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:trawel_project/1_hotel_page_All_hotel.dart';
import 'package:trawel_project/Hayat_hotel_places/3_hayat_2.dart';
import 'package:trawel_project/patang_hotel/2_patang.dart';

class patang extends StatefulWidget {
  const patang({super.key});

  @override
  State<patang> createState() => _patangState();
}

class _patangState extends State<patang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 211, 176),
      body: ListView(
        children: [
          Column(
            children: [
              CarouselSlider(
                items: [
                  Image.asset("assets/image/patang_1.jpg"),
                  Image.asset("assets/image/patang_2.jpg"),
                  Image.asset("assets/image/patang_3.jpg"),
                  Image.asset("assets/image/patang_4.jpg"),
                  Image.asset("assets/image/patang_5.jpg"),
                  Image.asset("assets/image/patang_6.jpg"),
                ],
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 100),
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  //  onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "     patang Hotel Ahmedabad.",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      " 4.2",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RatingBar.builder(
                    initialRating: 4.2,
                    itemSize: 30,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.all(0.1),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 187, 202, 187),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      "·5-star hotel",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Text(
                        "Nehru Bridge, Ellisbridge, Ahmedabad, Gujarat 380009",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => patang_2())),
                            (route) => false);
                      },
                      child: Image.asset(
                        "assets/image/patang_7.jpg",
                        width: 360,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: ((context) => patang_2())),
                          (route) => false);
                    }),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 51, 92, 111),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                    child: Text("Next Page"),
                  ),
                  Icon(Icons.arrow_right_sharp)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
