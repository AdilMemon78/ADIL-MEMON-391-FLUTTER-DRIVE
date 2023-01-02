import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/pages/cart.dart';

class itembottom extends StatefulWidget {
  const itembottom({Key? key}) : super(key: key);

  @override
  State<itembottom> createState() => _itembottomState();
}

class _itembottomState extends State<itembottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xfff7ca0f),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => cart())));
          },
          child: Container(
              height: 60,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xfff7ca0f),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Buy now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 1),
              )),
        )
      ]),
    );
  }
}
