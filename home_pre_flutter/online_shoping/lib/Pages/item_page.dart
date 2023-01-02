import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_shoping/widget/item_bottomNavigatoin_bar.dart';

import '../widget/item_appbar.dart';

class item_page extends StatefulWidget {
  const item_page({Key? key}) : super(key: key);

  @override
  State<item_page> createState() => _item_pageState();
}

class _item_pageState extends State<item_page> {
  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange
  ];
  var total = 0;
  var buy = 0;
  int c1 = 0;
  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedecf2),
      body: ListView(
        children: [
          item_appbar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/1.jpg",
              fit: BoxFit.contain,
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15, top: 48),
                      child: Row(children: [
                        Text(
                          "product Title",
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xff4c53a5),
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                              Icons.favorite,
                              color: Color(0xff4c53a5),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: ElevatedButton(
                                      onPressed: (() {
                                        total = (total - 500);
                                        c1 = (c1 - 1);
                                        buy = (buy - 1);
                                        print("your sandel price is $total");
                                      }),
                                      child: Icon(
                                        CupertinoIcons.minus,
                                      ))),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4c53a5),
                                  ),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: ElevatedButton(
                                      onPressed: (() {
                                        total = (total + 500);
                                        c1 = (c1 + 1);
                                        buy = (buy + 1);
                                        print("your sandel price is $total");
                                      }),
                                      child: Icon(
                                        CupertinoIcons.plus,
                                      )))
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "ashfw53qfhsutxrwfskahtsrwettyaudidkjsd.utswtvxbshfdvbdbdgstdavagysadafdklajdhdfsgscxssasvakaysgvvdmoud.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff4c53a5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "size",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4c53a5),
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 5; i < 10; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        )
                                      ]),
                                  child: Text(
                                    i.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4c53a5),
                                        fontSize: 18),
                                  ),
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "color",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4c53a5),
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Clrs[i],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        )
                                      ]),
                                )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: item_bottomnavigation_bar(),
    );
  }
}
