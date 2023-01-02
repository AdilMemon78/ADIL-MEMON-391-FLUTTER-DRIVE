import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var Item_List = [""];
  var img_list = [""];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Image.network(
                        "https://thumbs.dreamstime.com/z/domino-s-pizza-carryout-restaurant-dominos-consistently-one-top-five-companies-terms-online-transactions-ii-135935220.jpg"),
                    height: 280,
                    width: 800,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Column(children: [
                          Container(
                            child: Image.network(
                                "https://cdn.vox-cdn.com/thumbor/SPyIs_nkooKTMTM3v-n__Kptgds=/0x0:4671x3109/1200x800/filters:focal(1963x1182:2709x1928)/cdn.vox-cdn.com/uploads/chorus_image/image/61434503/GettyImages_1005705646.0.jpg"),
                            height: 60,
                            width: 100,
                          )
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Domino's",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 140),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                              "                             American casinofast food,\n                           Daily time 9 to 11:30 PM"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text("4.9 200+ Ratings"),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Icon(
                          Icons.location_pin,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text("Locations"),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.orange,
                        height: 50,
                        width: 390,
                        child: Center(
                            child: Text(
                          "              30 % Off \n Enjoy 30 % off on catgries",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 380,
                        color: Color.fromARGB(179, 166, 148, 148),
                        margin: EdgeInsets.all(2),
                        child: Center(
                            child: Text(
                          "Offer    Burgers   Pizza    Meals     Chikan",
                          style: TextStyle(fontSize: 18),
                        )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.network(
                            " https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnSaINIDZPLaRsMGQ77RKxznQ1GnzUIn5N3A&usqp=CAU"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Item Name",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100),
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 133, 117, 117),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
