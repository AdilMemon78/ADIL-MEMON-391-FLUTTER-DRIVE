import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:trawel_project/Hayat_hotel_places/3_hayat_2.dart';
import 'package:trawel_project/Hayat_hotel_places/4_hayat_3%20-%20Copy.dart';
import 'package:trawel_project/Hayat_hotel_places/5_hayat_4%20-%20Copy.dart';

class Hayat extends StatefulWidget {
  const Hayat({Key? key}) : super(key: key);

  @override
  State<Hayat> createState() => _HayatState();
}

class _HayatState extends State<Hayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            CarouselSlider(
              items: [
                Image.asset("assets/image/hayt_1.webp"),
                Image.asset("assets/image/hayt_2.webp"),
                Image.asset("assets/image/hayt_3.webp"),
                Image.asset("assets/image/hayt_4.webp"),
                Image.asset("assets/image/hayt_5.webp"),
                Image.asset("assets/image/hayt_6.webp"),
              ],
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(milliseconds: 100),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
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
                    "Hyatt Regency Ahmedabad.",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                    " 4.4",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                RatingBar.builder(
                  initialRating: 4.4,
                  itemSize: 30,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.all(0.1),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text(
                    "(11T) · 5-star hotel",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  child: Text(
                      "Hyatt Regency Ahmedabad\n 5-star hotel17/A, Ashram Rd, Usmanpura,\n Ahmedabad, Gujarat 380014•079 4017 1234"),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => HAyat_2())));
                    },
                    child: Image.asset(
                      "assets/image/hayt_7.webp",
                      height: 200,
                    ),
                  ),
                )
              ],
            ),
            ElevatedButton(
                onPressed: (() {
                  setState(() {});
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Hayat_4())));
                }),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
                child: Text(
                  "Book now",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54),
                ))
          ],
        ),
      ],
    ));
  }
}
