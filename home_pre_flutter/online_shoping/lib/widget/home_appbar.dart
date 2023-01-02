import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:online_shoping/Pages/Cart_page.dart';

class Home_appbar extends StatefulWidget {
  const Home_appbar({Key? key}) : super(key: key);

  @override
  State<Home_appbar> createState() => _Home_appbarState();
}

class _Home_appbarState extends State<Home_appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Icon(
              Icons.sort,
              size: 25,
              color: Color(0xff4c53a5),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "Dp shop",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4c53a5),
                ),
              ),
            ),
            Spacer(),
            Badge(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7.0),
              badgeContent: Text(
                "3",
                style: TextStyle(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Cart_page())));
                  // Navigator.pushNamed(context, "cart_page");
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 32,
                  color: Color(0xff4c53a5),
                ),
              ),
            )
          ],
        ));
  }
}
