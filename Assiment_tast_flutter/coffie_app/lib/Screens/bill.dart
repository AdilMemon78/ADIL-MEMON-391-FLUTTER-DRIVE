import 'package:coffie_app/Screens/homescreen.dart';
import 'package:coffie_app/Screens/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bill extends StatelessWidget {
  //const bill({super.key});
  final amount;
  final title;
  final desc;
  final price;

  bill(this.amount, this.title, this.desc, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff385858),
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Icon(
            Icons.done,
            color: Colors.white,
            size: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              "Your Order Placed Successfully",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2.5,
          ),
          ListTile(
            leading: Text(
              amount.toString(),
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            subtitle: Text(
              desc.toString(),
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            trailing: Text(
              "\$${price.toString()}",
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: MaterialButton(
              child: Text(
                "Order Now",
                style: TextStyle(
                    fontSize: 30, color: Colors.white, letterSpacing: 2.2),
              ),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.orange, width: 2.0)),
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Homescreen())));
              },
            ),
          )
        ])));
  }
}
