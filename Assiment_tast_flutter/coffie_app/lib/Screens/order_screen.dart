import 'package:coffie_app/Screens/bill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class orderscreen extends StatefulWidget {
  // const orderscreen({super.key});
  final Image;
  final Title;
  final desc;
  final price;

  orderscreen(this.Image, this.Title, this.desc, this.price);

  @override
  State<orderscreen> createState() => _orderscreenState();
}

int amount = 1;

class _orderscreenState extends State<orderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff385858),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("lib/images/1.chats.jpg"),
                  ),
                  borderRadius: BorderRadius.circular(35)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              "How many Do you need ?",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.Title,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.desc,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "\$${amount * widget.price}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (amount >= 1) {
                      amount++;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Color(0xff8f6251)),
                  child: Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                amount.toString(),
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (amount > 1) {
                      amount--;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Color(0xff8f6251)),
                  child: Icon(
                    CupertinoIcons.minus,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: MaterialButton(
              child: Text(
                "Order Now",
                style: TextStyle(
                    fontSize: 30, color: Colors.white, letterSpacing: 2.2),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.orange,
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => bill(
                              amount,
                              widget.Title,
                              widget.desc,
                              amount * widget.price,
                            ))));
              },
            ),
          )
        ],
      )),
    );
  }
}
