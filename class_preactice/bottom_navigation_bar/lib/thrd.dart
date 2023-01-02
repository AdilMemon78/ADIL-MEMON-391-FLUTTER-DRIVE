import 'package:flutter/material.dart';

class thrd extends StatefulWidget {
  const thrd({Key? key}) : super(key: key);

  @override
  State<thrd> createState() => _thrdState();
}

class _thrdState extends State<thrd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Image.network(
        "https://img.freepik.com/premium-photo/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg?w=2000",
        fit: BoxFit.fill,
      ),
    );
  }
}
