import 'package:flutter/material.dart';

class Since_city extends StatefulWidget {
  const Since_city({Key? key}) : super(key: key);

  @override
  State<Since_city> createState() => _Since_cityState();
}

class _Since_cityState extends State<Since_city> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/image/since_2.jpg",
            height: 100,
            width: 100,
          ),
        ),
        Expanded(
          child: Container(
            child: Text(
              "Gujarat, on the western coast of India, is one of the most prosperous and progressive Indian states. It came into existence in 1960 when it was separated from the State of Bombay. It is spread over an area of 1,96,024 square kms and has a population of 64 million. The Government of Gujarat has established the Gujarat Council of Science City, a registered society, to achieve the Gujarat Science City mandate. The Government is already in possession of 107 hectares of land.",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 150),
          child: Text(
            "Address",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            child: Text(
              "Thaltej, Ahmedabad, Gujarat 380060\n   Phone: 099099 91361\n Owner: Gujarat Council of Science City\n Area: 107 ha (260 acres)",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ]),
    );
  }
}
