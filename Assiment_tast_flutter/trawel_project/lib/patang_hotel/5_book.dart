import 'package:flutter/material.dart';
import 'package:trawel_project/pages_file/login_peg.dart';
import 'package:trawel_project/patang_hotel/6_bill.dart';

class book extends StatefulWidget {
  const book({super.key});

  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  TextEditingController myEdit = TextEditingController();
  var name = "";
  int total = 0;
  int count = 0;
  String? result = "";

  var num;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Booking Bill",
          style: TextStyle(color: Color.fromARGB(255, 115, 142, 116)),
        ),
        centerTitle: true,
      ),
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
                margin: EdgeInsets.only(top: 50),
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
                  "Hotel price is \$3500",
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
                  total = (total + 3500);
                  print("Your booking price is :-->$total");
                  setState(() {
                    count++;
                  });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
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
                  total = (total - 3500);
                  print("your buy cancel  price is :-->$total");
                  setState(() {
                    count--;
                  });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
              ),
            ],
          ),
          SizedBox(
            height: 20,
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
                          builder: ((context) => patang_bill(
                              name: "your name is : $name",
                              num: "your number is : $num",
                              result: "Booking Ticket price is: $total"))));
                }),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
                ),
                child: Text(
                  "Cheak Out",
                  style: TextStyle(color: Colors.blue),
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
