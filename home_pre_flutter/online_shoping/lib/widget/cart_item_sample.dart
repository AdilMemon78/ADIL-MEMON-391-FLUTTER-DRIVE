import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart_item_sample extends StatefulWidget {
  const cart_item_sample({Key? key}) : super(key: key);

  @override
  State<cart_item_sample> createState() => _cart_item_sampleState();
}

class _cart_item_sampleState extends State<cart_item_sample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            for (int i = 1; i <= 3; i++)
              Container(
                height: 110,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Radio(
                        value: "",
                        groupValue: "",
                        activeColor: Color(0xff4c53a5),
                        onChanged: (index) {}),
                    Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.only(left: 12),
                      child: Image.asset("images/$i.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Product Title",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4c53a5),
                                fontSize: 18),
                          ),
                          Text(
                            "\$55",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4c53a5),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      )
                                    ]),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4c53a5),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      )
                                    ]),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ],
    );
  }
}
