import 'package:flutter/material.dart';
import 'package:trawel_project/Hayat_hotel_places/3_hayat_2.dart';
import 'package:trawel_project/Hayat_hotel_places/5_hayat_4%20-%20Copy.dart';
import 'package:trawel_project/patang_hotel/5_book.dart';

class patang_bill extends StatelessWidget {
  String? result;
  String name = "";
  var num;

  patang_bill({required this.name, required this.num, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        children: 
          [SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  height: 380,
                ),
                Container(
                  // alignment: Alignment.center,
                  child: Text(
                    "Thank you for Visit again.",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                ),
                Text("________________")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
