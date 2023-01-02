import 'package:flutter/material.dart';

class cart_item_sample extends StatefulWidget {
  const cart_item_sample({Key? key}) : super(key: key);

  @override
  State<cart_item_sample> createState() => _cart_item_sampleState();
}

class _cart_item_sampleState extends State<cart_item_sample> {
  bool cheakvalue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.amber,
                        value: cheakvalue,
                        onChanged: (newValue) {
                          setState(() {
                            cheakvalue = newValue!;
                          });
                        }),
                    Container(
                      height: 70,
                      width: 70,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: Image.asset(
                        "assets/images/01.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(
                            "Item name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 53, 75, 54),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text("\$50",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "/ 5 Kg",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffffb608),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text(
                                "01",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffffb608),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "+",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
      ],
    );
  }
}
