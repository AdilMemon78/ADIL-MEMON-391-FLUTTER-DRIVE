import 'package:flutter/material.dart';

import 'package:trawel_project/histery_places/histery_page_1.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:trawel_project/Hayat_hotel_places/2_hayat_hotel.dart';
import 'package:trawel_project/patang_hotel/1_patang.dart';

class Hotel_page extends StatelessWidget {
  const Hotel_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Hayat())));
                            },
                            child: Image.asset("assets/image/hotel._1.jpg"))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Hayat()),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Text(
                              "Hyatt Regency\n Ahmedabad\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 3,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Spacer(),
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
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => patang())));
                      },
                      child: Image.asset(
                        "assets/image/chinubhai-centre-and-patang-hotel.webp",
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => patang()),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Text(
                              "Hotel patang",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                          SizedBox(
                            height: 55,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
