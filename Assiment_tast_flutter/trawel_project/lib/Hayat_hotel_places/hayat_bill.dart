import 'package:flutter/material.dart';
import 'package:trawel_project/Hayat_hotel_places/3_hayat_2.dart';
import 'package:trawel_project/Hayat_hotel_places/5_hayat_4%20-%20Copy.dart';

class Bill_1 extends StatelessWidget {
  String? result;
  String name = "";
  var num;

  Bill_1({required this.name, required this.num, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    num,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    result!,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 400,
                ),
                Container(
                  //alignment: Alignment.center,
                  child: Text(
                    "Thankyou For Visit Again",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
