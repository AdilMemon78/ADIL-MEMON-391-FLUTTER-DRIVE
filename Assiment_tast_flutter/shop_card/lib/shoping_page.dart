import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:shop_card/bill.dart';

class shoping_page extends StatefulWidget {
  const shoping_page({Key? key}) : super(key: key);

  @override
  State<shoping_page> createState() => _shoping_pageState();
}

class _shoping_pageState extends State<shoping_page> {
  @override
  TextEditingController myEdit = TextEditingController();
  var total = 0;
  String? result = "";
  var item_count = 0;

  var c1 = 0;
  var c2 = 0;
  var c3 = 0;
  var c4 = 0;

  var buy = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(
              Icons.send_to_mobile,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "All mobiles avalible",
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 28),
            ),
            backgroundColor: Colors.teal),
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Image.network(
                  "https://images.samsung.com/is/image/samsung/p6pim/levant/2202/gallery/levant-galaxy-s22-s901-412882-sm-s901eidgmea-530960271",
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                child: Text(
                  "samsung s22+,\n price 51000.",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800),
                ),
              ),
              // SizedBox(
              //   width: 45,
              // ),
              ElevatedButton(
                child: Icon(Icons.shopping_cart),
                onPressed: () {
                  total = (total + 51000);
                  print("your samsung s22+ price is :-->$total");
                  c1 = (c1 + 1);
                  buy = (buy + 1);
                },
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    total = (total - 51000);
                    print("your samsung s22+ cencal price  is:-->$total");
                    c1 = (c1 - 1);
                    buy = (buy - 1);
                  },
                  child: Icon(Icons.remove_circle)),
              SizedBox(
                width: 7,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Image.network(
                  "https://cdn.shopify.com/s/files/1/0583/2202/6680/products/iphone-13-pro-silver-select_2360a7f5-8345-481d-8eea-96eb1bf715e5_1024x1024.jpg?v=1645227618",
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                child: Text(
                  "iphone 13\n pro max,\n price 130000.",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800),
                ),
              ),
              // SizedBox(
              //   width: 15,
              // ),
              ElevatedButton(
                  onPressed: () {
                    total = (total + 130000);
                    print("your iphone 13 pro max price is $total");
                    c2 = (c2 + 1);
                    buy = (buy + 1);
                  },
                  child: Icon(Icons.shopping_cart)),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    total = (total - 130000);
                    print("your iphone 13 pro max cancel price is $total");
                    c2 = (c2 - 1);
                    buy = (buy - 1);
                  },
                  child: Icon(Icons.remove_circle)),
              SizedBox(
                width: 7,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Image.network(
                  "https://vlebazaar.in/image/cache/catalog//-Vivo-V17Pro-Glacier-Ice-White-128-GB-8-GB-RAM/-Vivo-V17Pro-Glacier-Ice-White-128-GB-8-GB-RAM-1100x1100h.jpg",
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                child: Text(
                  "vivo v17 pro,\n price 22000.",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    total = (total + 22000);
                    print("your vivo v17 pro price is $total");
                    c3 = (c3 + 1);
                    buy = (buy + 1);
                  },
                  child: Icon(Icons.shopping_cart)),
              SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    c3 = (c3 - 1);
                    buy = (buy - 1);
                    total = (total - 130000);
                    print("your vivo v17 pro cancel price is $total");
                    print("$total");
                  },
                  child: Icon(Icons.remove_circle)),
              SizedBox(
                width: 7,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.network(
                  "https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-redmi-note-9-4.jpg",
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                child: Text(
                  "Mi redmi\n note 9,\n price 9500.",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    total = (total + 9500);
                    print("your Mi redmi note 9 price is $total");
                    c4 = (c4 + 1);
                    buy = (buy + 1);
                  },
                  child: Icon(Icons.shopping_cart)),
              SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    c4 = (c4 - 1);
                    buy = (buy - 1);
                    total = (total - 9500);
                    print("your Mi redmi note 9 cancel price is $total");
                  },
                  child: Icon(Icons.remove_circle)),
              SizedBox(
                width: 7,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                //total = (Price);
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Bill_1(
                              name: "@dil",
                              result: "\ncount samsung s22+--->$c1"
                                  "\ncount iphone 13 pro--->$c2"
                                  "\ncount vivo v17 pro--->$c3"
                                  "\ncount redmi note 9--->$c4"
                                  "\n Totle buy--->$buy"
                                  "\nTotle Amount--->$total"))));
                });
                myEdit.text = "";
              },
              child: Text("Cheak out")),
        ]));
  }
}
