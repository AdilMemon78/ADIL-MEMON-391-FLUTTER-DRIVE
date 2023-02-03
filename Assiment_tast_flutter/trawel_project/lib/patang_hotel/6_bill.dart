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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                num,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                result!,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: ((context) => book())));
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: ((context) => book())),
                        (route) => false);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  child: Text(
                    "Cler data",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                height: 350,
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
      ),
    );
  }
}
