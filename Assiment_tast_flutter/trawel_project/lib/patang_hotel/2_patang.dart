import 'package:flutter/material.dart';
import 'package:trawel_project/Hayat_hotel_places/2_hayat_hotel.dart';
import 'package:trawel_project/Hayat_hotel_places/3_hayat_2.dart';
import 'package:trawel_project/patang_hotel/3_phone%20call.dart';
import 'package:trawel_project/patang_hotel/4_photo.dart';
import 'package:trawel_project/patang_hotel/5_book.dart';

class patang_2 extends StatefulWidget {
  const patang_2({super.key});

  @override
  State<patang_2> createState() => _patang_2State();
}

class _patang_2State extends State<patang_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Row(
            children: [
              Container(
                child: Text(
                  "Location and Contact",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => patang_photo())));
                  },
                  child: Image.asset(
                    "assets/image/pt1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.near_me_outlined,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  "Nehru Bridge Road Ashram Road Nehru Bridge Road Ashram Road Ellisbridge, Near ICICI Bank ATM, Ahmedabad 380009 India",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              child: Icon(
                Icons.web_asset,
                size: 30,
                // color: Colors.grey.withOpacity(0.2),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Web Site",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 50,
            ),
            Container(child: Icon(Icons.email)),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => phone_calling())));
              },
              child: Text(
                "E-mail",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Row(
            children: [
              Container(
                child: Icon(Icons.phone),
              ),
              SizedBox(
                width: 19,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => phone_calling())));
                },
                child: Text(
                  "+91 9375341886",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
        ElevatedButton(
          onPressed: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => book())));
          }),
          child: Text(
            "Book Now",
            style: TextStyle(color: Color.fromARGB(179, 117, 29, 152)),
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(97, 188, 32, 32)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
        )
      ],
    ));
  }
}
