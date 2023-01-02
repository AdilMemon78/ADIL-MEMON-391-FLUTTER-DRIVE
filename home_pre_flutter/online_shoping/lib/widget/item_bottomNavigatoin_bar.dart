import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shoping/Pages/bill_1.dart';

class item_bottomnavigation_bar extends StatefulWidget {
  const item_bottomnavigation_bar({Key? key}) : super(key: key);

  @override
  State<item_bottomnavigation_bar> createState() =>
      _item_bottomnavigation_barState();
}

class _item_bottomnavigation_barState extends State<item_bottomnavigation_bar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$120",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff4c53a5),
              ),
            ),
            ElevatedButton.icon(
              onPressed: (() {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Bill_1(
                              result: "\n your sandel price is ---->"))));
                });
              }),
              icon: Icon(CupertinoIcons.cart_badge_plus),
              label: Text(
                "Add to cart",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xff4c53a5),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
            )
          ],
        ),
      ),
    );
  }
}
