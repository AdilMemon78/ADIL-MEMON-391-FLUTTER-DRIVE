import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_card/bill_2.dart';
import 'dart:math';

import 'package:shop_card/main.dart';

class shoping_page2 extends StatefulWidget {
  const shoping_page2({Key? key}) : super(key: key);

  @override
  State<shoping_page2> createState() => _shoping_page2State();
}

class _shoping_page2State extends State<shoping_page2> {
  @override
  TextEditingController myEdit = TextEditingController();
  var total = 0;

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
              Icons.mobile_friendly,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "All Laptop avalible",
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
                  "https://5.imimg.com/data5/SELLER/Default/2021/3/ZK/AJ/UZ/33953501/toshiba-i5-laptop-1st-gen-250x250.jpg",
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                child: Text(
                  "laptop hp\n30000",
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
                  total = (total + 30000);
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
                    total = (total - 30000);
                    print("$total");
                    c1 = (c1 - 1);
                    buy = (buy - 1);
                    total;
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
                  "https://in-media.apjonlinecdn.com/catalog/product/5/0/50M63PA-1_T1656563298.png",
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                child: Text(
                  "Hp pavilion,\n price 90000.",
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
                    total = (total + 90000);
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
                    c2 = (c2 - 1);
                    buy = (buy - 1);
                    total = (total - 90000);
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
                margin: EdgeInsets.all(5),
                child: Image.network(
                  "https://cdn1.smartprix.com/rx-iQ2AwqUqH-w1200-h1200/Q2AwqUqH.jpg",
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                child: Text(
                  "hp pavilion 15,\n price 70000.",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800),
                ),
              ),
              // SizedBox(
              //   width: 60,
              // ),
              ElevatedButton(
                  onPressed: () {
                    total = (total + 70000);
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
                    total = (total - 70000);
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
                  "https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c06591931.png",
                  height: 100,
                  width: 50,
                ),
              ),
              Container(
                child: Text(
                  " hp laptop,\n price 25000.",
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
                    total = (total + 25000);
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
                    total = (total - 25000);
                    print("$total");
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
                  buy = (buy);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => bill_2(
                              name: "@dil",
                              result: "\nHp laptop+--->$c1"
                                  "\nHp pavalion--->$c2"
                                  "\nHp pavalion15--->$c3"
                                  "\nHp pavalion--->$c4"
                                  "\n Totle buy--->$buy"
                                  "\nTotle Amount--->$total"))));
                });
              },
              child: Text("Cheak out")),
        ]));
  }
}
