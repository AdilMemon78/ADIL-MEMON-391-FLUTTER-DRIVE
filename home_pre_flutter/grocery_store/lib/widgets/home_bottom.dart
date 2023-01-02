import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_store/pages/cart.dart';

class Homebottom extends StatelessWidget {
  const Homebottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                Icons.home,
                color: Color.fromARGB(255, 215, 195, 14),
                size: 32,
              ),
              Text("Home",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 215, 195, 14),
                  ))
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.search,
                color: Color.fromARGB(255, 215, 195, 14),
                size: 32,
              ),
              Text("Explore",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 215, 195, 14),
                  ))
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => cart())));
            },
            child: Column(
              children: [
                Icon(
                  CupertinoIcons.cart,
                  color: Color.fromARGB(255, 215, 195, 14),
                  size: 32,
                ),
                Text("My cart",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 215, 195, 14),
                    ))
              ],
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.person,
                color: Color.fromARGB(255, 215, 195, 14),
                size: 32,
              ),
              Text("Account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 215, 195, 14),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
