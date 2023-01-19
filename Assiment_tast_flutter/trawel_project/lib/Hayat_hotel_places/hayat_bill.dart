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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                // Navigator.push(context,
                //     MaterialPageRoute(builder: ((context) => Hayat_4())));
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
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
