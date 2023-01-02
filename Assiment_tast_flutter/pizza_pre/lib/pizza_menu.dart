import 'package:flutter/material.dart';

class PizzaMenu extends StatefulWidget {
  const PizzaMenu({Key? key}) : super(key: key);

  @override
  State<PizzaMenu> createState() => _MyappState();
}

class _MyappState extends State<PizzaMenu> {
  @override
  TextEditingController myEdit = TextEditingController();
  double purch = 0.0, totle = 0.0;

  int count1 = 0, count2 = 0, count3 = 0;
  String? result = "";

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Center(
                child: Text(
              "***PIZZA MENU***",
              style: TextStyle(
                  color: Colors.blue,
                  backgroundColor: Colors.red,
                  fontSize: 30),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.network(
                  "https://m.media-amazon.com/images/I/61u6WwaO9pL._SL1080_.jpg",
                  height: 80,
                  width: 80,
                ),
              ),
              Container(
                child: Text(
                  " 1 large pizza = 10.99 AUD ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Buy Item 10.99:->${purch = (purch + 10.99)}");
                  count1 = (count1 + 1);
                },
                child: Text("Buy Now"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.network(
                  "https://m.media-amazon.com/images/I/61u6WwaO9pL._SL1080_.jpg",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 2 large Pizzas = 20.99 AUD ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Buy Item 20.99:->${purch = (purch + 20.99)}");
                  count2 = (count2 + 1);
                },
                child: Text("Buy Now"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.network(
                  "https://m.media-amazon.com/images/I/61u6WwaO9pL._SL1080_.jpg",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 3 Large Pizzas = 29.99 AUD",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Buy Item 29.99:->${purch = (purch + 29.99)}");
                  count3 = (count3 + 1);
                },
                child: Text("Buy Now"),
              ),
            ],
          ),
          Container(
            child: Center(
                child: Text(
              "***Buy 4 or more pizza and get \n      1.5lt of soft drink free***",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                  backgroundColor: Colors.yellow),
            )),
          ),
          ElevatedButton(
            onPressed: (() {
              setState(() {
                var totle = (purch);
                result = "<<<<****Bill****>>>>"
                    "\n Purchase Amount:-->$totle"
                    "\n Count 1 Large Pizza:-->$count1"
                    "\n Count 2 Large Pizzas:-->$count2"
                    "\n Count 3 Large Pizzas:-->$count3";
              });
              myEdit.text = "";

              totle = (totle);
            }),
            child: Text("Buy"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    backgroundColor: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
