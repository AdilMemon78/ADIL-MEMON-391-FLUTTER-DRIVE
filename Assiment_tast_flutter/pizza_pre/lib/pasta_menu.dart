import 'package:flutter/material.dart';

class PastaMenu extends StatefulWidget {
  const PastaMenu({Key? key}) : super(key: key);

  @override
  State<PastaMenu> createState() => _MyappState();
}

class _MyappState extends State<PastaMenu> {
  @override
  TextEditingController myEdit = TextEditingController();
  double purch = 0.0, totle = 0.0;
  var maxpric;
  int count4 = 0, count5 = 0, count6 = 0;
  int total_items = 0;
  String? result = "";

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            margin: EdgeInsets.all(5),
            child: Center(
              child: Text("***PASTA MENU ***",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      backgroundColor: Color.fromARGB(255, 255, 59, 59))),
            )),
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
                " 1 large pasta = 09.05 AUD ",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print("Buy Item 9.0 :->${purch = (purch + 09.00)}");
                  count4 = (count4 + 1);
                  total_items = (total_items + 1);
                },
                child: Text("Buy Now"))
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
                " 2 large pastas = 17.00 AUD",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Buy Item 17.00:->${purch = (purch + 17.00)}");
                count5 = (count5 + 1);
                total_items = (total_items + 1);
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
                " 3 large pastas = 27.50 AUD",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print("Buy Item 27.50:->${purch = (purch + 27.50)}");
                  count6 = (count6 + 1);
                  total_items = (total_items + 1);
                },
                child: Text("Buy Now"))
          ],
        ),
        ElevatedButton(
          onPressed: (() {
            setState(() {
              var totle = (purch);
              result = "<<<<****Bill****>>>>"
                  "\n Purchase Amount:-->$totle"
                  "\n All items ----->$total_items"
                  "\n Count 1 Large Pizza:-->$count4"
                  "\n Count 2 Large Pizzas:-->$count5"
                  "\n Count 3 Large Pizzas:-->$count6";
            });

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
    ));
  }
}
