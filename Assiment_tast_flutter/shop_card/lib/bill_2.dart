import 'package:flutter/material.dart';
import 'package:shop_card/shoping_page_2.dart';
import 'package:shop_card/tab_bar.dart';

class bill_2 extends StatelessWidget {
  String? result;
  var name;

  bill_2({required this.name, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                result!,
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => tab_bar())));
                  },
                  child: Text(
                    "Cler data",
                    style: TextStyle(fontSize: 30),
                  ))
            ],
          )),
    );
  }
}
