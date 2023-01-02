import 'package:flutter/material.dart';
import 'package:grocery_store/pages/order_page.dart';

class car_bottom extends StatefulWidget {
  const car_bottom({Key? key}) : super(key: key);

  @override
  State<car_bottom> createState() => _car_bottomState();
}

class _car_bottomState extends State<car_bottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 5)
      ]),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(
                  Icons.discount,
                  color: Color(0xffffb608),
                ),
                Text(
                  "Use promo coupons",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(162, 0, 0, 0)),
                )
              ],
            ),
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Totel",
                    style: TextStyle(
                        fontSize: 23,
                        color: Color.fromARGB(162, 0, 0, 0),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "\$120",
                    style: TextStyle(
                        fontSize: 21,
                        color: Color(0xffffb608),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              InkWell(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => order_page())));
                  }),
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xffffb608),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Cheak out",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
