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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 25),
          ),
          Text(
            num,
            style: TextStyle(fontSize: 25),
          ),
          Text(
            result!,
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: ((context) => book())));
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
              child: Text(
                "Cler data",
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
