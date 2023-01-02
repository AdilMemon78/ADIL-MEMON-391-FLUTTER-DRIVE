import 'package:flutter/material.dart';
import 'package:trawel_project/Hayat_hotel_places/hayat_bill.dart';

class Hayat_4 extends StatefulWidget {
  const Hayat_4({Key? key}) : super(key: key);

  @override
  State<Hayat_4> createState() => _Hayat_4State();
}

class _Hayat_4State extends State<Hayat_4> {
  TextEditingController myEdit = TextEditingController();
  var name = "";
  int total = 0;
  int count = 0;
  String? result = "";

  var num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(179, 150, 125, 125),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.nature),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                hintText: "Enter name",
              ),
              onChanged: (value) {
                name = value;
                setState(() {
                  print("-------->$name");
                });
              },
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 80),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    hintText: "Mobile No.",
                  ),
                  onChanged: (value) {
                    num = value;
                    setState(() {
                      print("Best number is----->$num");
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Hotel price is \$4000",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                child: Icon(Icons.add),
                onPressed: () {
                  total = (total + 4000);
                  print("Your booking price is :-->$total");
                  setState(() {
                    count++;
                  });
                },
              ),
              Container(
                child: Text(
                  "$count",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              ElevatedButton(
                child: Icon(Icons.remove),
                onPressed: () {
                  total = (total - 4000);
                  print("your buy cancel  price is :-->$total");
                  setState(() {
                    count--;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (() {
                  total;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Bill_1(
                              name: " your best name is : $name",
                              num: " your number is : $num",
                              result: " your price is: $total"))));
                }),
                child: Text("Cheak Out"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                result!,
                style: TextStyle(fontSize: 22),
              )
            ],
          ),
        ],
      ),
    );
  }
}
