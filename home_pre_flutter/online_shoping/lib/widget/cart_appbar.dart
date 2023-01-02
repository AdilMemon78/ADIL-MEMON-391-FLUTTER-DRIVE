import 'package:flutter/material.dart';
import 'package:online_shoping/Pages/homepage.dart';

class cart_appbar extends StatefulWidget {
  const cart_appbar({Key? key}) : super(key: key);

  @override
  State<cart_appbar> createState() => _cart_appbarState();
}

class _cart_appbarState extends State<cart_appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => home_page())));
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xff4c53a5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xff4c53a5),
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 30,
            color: Color(0xff4c53a5),
          )
        ],
      ),
    );
  }
}
