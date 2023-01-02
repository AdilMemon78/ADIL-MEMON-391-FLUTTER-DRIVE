import 'dart:io';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Menu());
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MyappState();
}

class _MyappState extends State<Menu> {
  @override
  var purch1 = 0, purch2 = 0, purch3 = 0, purch4 = 0, purch5 = 0, purch6 = 0;
  var maxpric;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.local_pizza_rounded,
            color: Colors.yellow,
            size: 30,
          ),
          title: Text(
            "Amazing Pizza and Pasta",
            style: TextStyle(
                color: Colors.black, fontStyle: FontStyle.italic, fontSize: 28),
          ),
          backgroundColor: Colors.yellowAccent),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Image.network(
                  "https://i.cdn.newsbytesapp.com/images/l205_37981604753717.jpg",
                  height: 100,
                  width: 100,
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
                    print("Buy Item${purch1 + 10.99}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Image.network(
                  "https://desktopcreation.com/pzzaco/wp-content/uploads/2017/10/any_two_large_pizzas_500-1.png",
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
                    print("Buy Item${purch2 + 20.99}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Image.network(
                  "https://di-cdn.sfo2.digitaloceanspaces.com/cdn/533_ca6049b328a2fa543057cac63fdc656f.jpg",
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
                    print("Buy Item${purch3 + 29.99}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Container(
            child: Center(
                child: Text(
              "**Buy 4 or more pizza and get \n      1.5lt of soft drink free**",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                  backgroundColor: Colors.yellow),
            )),
          ),
          Container(
              margin: EdgeInsets.all(5),
              child: Center(
                child: Text("**PASTA MENU **",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        backgroundColor: Color.fromARGB(255, 255, 59, 59))),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Image.network(
                  "https://www.seriouseats.com/thmb/HHgx6ngf7AWMgtX1i76NP9Q6D94=/1280x853/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__slice.seriouseats.com__images__2013__01__20130108-dominos-chain-reaction-bread-bowl-pasta-3-72d34540acb442e9abe9f0ea8ce5dafd.jpg",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 1 large pasta = 09.05 AUD ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Buy Item${purch4 + 09.05}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Image.network(
                  "https://i.insider.com/5cf7c8fb11e2050dc5170789?width=1000&format=jpeg&auto=webp",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 2 large pastas = 17.00 AUD",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Buy Item${purch5 + 17.00}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
                  " 3 large pastas = 27.50 AUD",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Buy Item${purch6 + 27.50}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 125,
                child: ElevatedButton(
                    onPressed: (() {
                      maxpric =
                          purch1 + purch2 + purch3 + purch4 + purch5 + purch6;
                      print(maxpric);
                    }),
                    child: Center(
                        child: Text(
                      "TOTLE",
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
