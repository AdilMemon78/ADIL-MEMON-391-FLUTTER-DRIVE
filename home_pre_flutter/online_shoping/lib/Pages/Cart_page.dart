import 'package:flutter/material.dart';
import 'package:online_shoping/widget/cart_appbar.dart';
import 'package:online_shoping/widget/cart_item_sample.dart';
import 'package:online_shoping/widget/cart_navigation_bar.dart';

class Cart_page extends StatefulWidget {
  const Cart_page({Key? key}) : super(key: key);

  @override
  State<Cart_page> createState() => _Cart_pageState();
}

class _Cart_pageState extends State<Cart_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            // cart_appbar widget
            cart_appbar(),
            Container(
              height: 700,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Color(0xffedecf2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  )),
              child: Column(
                children: [
                  //cart_item_sample(), widget
                  cart_item_sample(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    padding: EdgeInsets.all(10),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff4c53a5),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Add copun code",
                          style: TextStyle(
                              color: Color(0xff4c53a5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: cart_navigation_bar());
  }
}
