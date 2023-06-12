import 'package:flutter/material.dart';
import 'package:online_shoping/Pages/item_page.dart';

class item_widget extends StatefulWidget {
  const item_widget({Key? key}) : super(key: key);

  @override
  State<item_widget> createState() => _item_widgetState();
}

class _item_widgetState extends State<item_widget> {
  List price = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            // //disible scroll
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              for (int i = 1; i <= 7; i++)
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color(0xff4c53a5),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "-50%",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => item_page())));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "images/$i.jpg",
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Product Title",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4c53a5),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "wight discriptiion",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                            Icon(Icons.shopping_cart_checkout,
                                color: Colors.purple),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          //   child: GridView.builder(
          //     gridDelegate:
          //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          //     itemCount: 1,
          //     shrinkWrap: true,
          //     physics: NeverScrollableScrollPhysics(),
          //     itemBuilder: (context, index) {
          //       return InkWell(
          //         onTap: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: ((context) => item_page())),
          //           );
          //         },
          //         child: Container(
          //           margin: EdgeInsets.all(50),
          //           padding: EdgeInsets.symmetric(vertical: 15),
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(10),
          //               boxShadow: [
          //                 BoxShadow(
          //                     color: Colors.black12,
          //                     blurRadius: 4,
          //                     spreadRadius: 2)
          //               ]),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               CircleAvatar(
          //                   radius: 34,
          //                   backgroundImage: AssetImage("images/2.jpg"),
          //                   backgroundColor: Colors.white),
          //               Text(
          //                 "Dr.Drushti",
          //                 style: TextStyle(
          //                     fontSize: 15,
          //                     fontWeight: FontWeight.w500,
          //                     color: Colors.black54),
          //               ),
          //               Text(
          //                 "kyahai[index]",
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.w500, color: Colors.black54),
          //               ),
          //               Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Icon(
          //                     Icons.star,
          //                     color: Colors.yellow,
          //                   ),
          //                   Text(
          //                     "",
          //                     style:
          //                         TextStyle(color: Colors.black45, fontSize: 17),
          //                   )
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          // GridView.builder(
          //   gridDelegate:
          //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          //   itemCount: 1,
          //   shrinkWrap: true,
          //   physics: NeverScrollableScrollPhysics(),
          //   itemBuilder: (context, index) {
          //     return InkWell(
          //       onTap: () {
          //         // Navigator.push(
          //         //   context,
          //         //   MaterialPageRoute(
          //         //       builder: ((context) => appoiment_screen())
          //         // ),
          //         //);
          //       },
          //       child: Container(
          //         margin: EdgeInsets.all(50),
          //         padding: EdgeInsets.symmetric(vertical: 15),
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(10),
          //             boxShadow: [
          //               BoxShadow(
          //                   color: Colors.black12, blurRadius: 4, spreadRadius: 2)
          //             ]),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             CircleAvatar(
          //                 radius: 34,
          //                 backgroundImage: AssetImage("images/2.jpg"),
          //                 backgroundColor: Colors.white),
          //             Text(
          //               "Dr.Drushti",
          //               style: TextStyle(
          //                   fontSize: 15,
          //                   fontWeight: FontWeight.w500,
          //                   color: Colors.black54),
          //             ),
          //             Text(
          //               "kyahai[index]",
          //               style: TextStyle(
          //                   fontWeight: FontWeight.w500, color: Colors.black54),
          //             ),
          //             Row(
          //               mainAxisSize: MainAxisSize.min,
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Icon(
          //                   Icons.star,
          //                   color: Colors.yellow,
          //                 ),
          //                 Text(
          //                   "",
          //                   style: TextStyle(color: Colors.black45, fontSize: 17),
          //                 )
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // ),
        )
      ],
    );
  }
}
