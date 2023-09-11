import 'package:flutter/material.dart';
import 'package:trawel_project/1_hotel_page_All_hotel.dart';
import 'package:trawel_project/Hayat_hotel_places/3_hayat_2.dart';
import 'package:trawel_project/Hayat_hotel_places/5_hayat_4%20-%20Copy.dart';
import 'package:trawel_project/welcome_page_1.dart';

class Bill_1 extends StatelessWidget {
  String? result;
  String name = "";
  var num;

  Bill_1({required this.name, required this.num, required this.result});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white54,
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  num,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  result!,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ]),
            const SizedBox(
              height: 400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Histery_1(),
                      ),
                      (route) => false,
                    );
                  },
                  child: const Text(
                    "Thankyou For Visit Again",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
