// import 'dart:ui';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(Myapp());
// }

// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);

//   @override
//   State<Myapp> createState() => _MyappState();
// }

// class _MyappState extends State<Myapp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         //appBar: AppBar(),
//         body: Column(
//           children: [
//             Column(children: [
//               Container(
//                 child: Image.network(
//                     "https://www.mcdonalds.com/content/dam/sites/usa/nfl/publication/1PUB_Desktop_Deals-v1_1168x520.jpg"),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     color: Colors.yellow,
//                     margin: EdgeInsets.only(top: 10, left: 10),
//                     child: Image.network(
//                       "https://eastlakeohio.com/wp-content/uploads/2018/10/mcdonald-s-logo-0D95A820B2-seeklogo.com_.png",
//                       height: 50,
//                       width: 50,
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(right: 200, top: 10),
//                     color: Colors.yellow,
//                     height: 50,
//                     width: 120,
//                     child: Center(
//                         child: Text(
//                       "MC Donald's",
//                       style: TextStyle(fontSize: 20),
//                     )),
//                   ),
//                 ],
//               ),
//               Container(
//                 child: Text(
//                     "American casino, fast food \nDaily Time 9:30 to 11 PM"),
//               ),
//               Container(
//                 padding: EdgeInsets.only(
//                   left: 340,
//                 ),
//                 child: Icon(
//                   Icons.favorite,
//                   color: Colors.red,
//                 ),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     child: Icon(
//                       Icons.star,
//                       color: Colors.yellow,
//                     ),
//                   ),
//                   Container(
//                       child: Text(
//                     "4.9 200+ Ratings",
//                     style: TextStyle(color: Color.fromARGB(255, 48, 45, 45)),
//                   )),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Container(
//                     child: Icon(
//                       Icons.location_on,
//                       color: Colors.yellow,
//                     ),
//                   ),
//                   Container(
//                       child: Text(
//                     "Location",
//                     style: TextStyle(color: Color.fromARGB(255, 48, 45, 45)),
//                   )),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Container(
//                     height: 40,
//                     width: 380,
//                     color: Color.fromARGB(179, 166, 148, 148),
//                     margin: EdgeInsets.all(2),
//                     child: Center(
//                         child: Text(
//                       "Offer    Burgers   Pizza    Meals     Chikan",
//                       style: TextStyle(fontSize: 18),
//                     )),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   Container(
//                     child: Image.network(
//                       "https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY=",
//                       height: 100,
//                       width: 100,
//                     ),
//                   ),
//                   Container(
//                     child: Center(
//                         child: Text(
//                       "Itam_Name \n 5.0",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 71, 68, 68), fontSize: 20),
//                     )),
//                   ),
//                   Container(
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Colors.red,
//                     ),
//                     margin: EdgeInsets.only(left: 120),
//                   ),
//                   Container(child: Center(child: Text(""))),
//                   Container(
//                       child: // Icon(Icons.plus_one_outlined),
//                           Text(
//                     "+1",
//                   )),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Container(
//                     child: Image.network(
//                         "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Mac_Donald.jpg/1280px-Mac_Donald.jpg"),
//                     height: 100,
//                     width: 100,
//                   ),
//                   Container(
//                     child: Center(
//                         child: Text(
//                       "Itam_Name \n 5.55",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 71, 68, 68), fontSize: 20),
//                     )),
//                   ),
//                   Container(
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Colors.red,
//                     ),
//                     margin: EdgeInsets.only(left: 120),
//                   ),
//                   Container(child: Center(child: Text(""))),
//                   Container(
//                       child: // Icon(Icons.plus_one_outlined),
//                           Text(
//                     "+2",
//                   )),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Container(
//                     child: Image.network(
//                         "https://www.mcdonalds.com/content/dam/sites/usa/nfl/publication/1pub_Freebigmac_Loyalty_1168x520.jpg"),
//                     height: 100,
//                     width: 100,
//                   ),
//                   Container(
//                     child: Text(
//                       "Iteam_Name\n 5.55",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 71, 68, 68), fontSize: 20),
//                     ),
//                   ),
//                   Container(
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Colors.red,
//                     ),
//                     margin: EdgeInsets.only(left: 120),
//                   ),
//                   Container(child: Center(child: Text(""))),
//                   Container(
//                     child: // Icon(Icons.plus_one_outlined),
//                         Text(
//                       "+3",
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Container(
//                     child: Image.network(
//                         "https://image.shutterstock.com/image-photo/minsk-belarus-may-18-2017-260nw-659678686.jpg"),
//                     height: 100,
//                     width: 100,
//                   ),
//                   Container(
//                     child: Text(
//                       "Iteam_Name\n 5.55",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 71, 68, 68), fontSize: 20),
//                     ),
//                   ),
//                   Container(
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Colors.red,
//                     ),
//                     margin: EdgeInsets.only(left: 120),
//                   ),
//                   Container(child: Center(child: Text(""))),
//                   Container(
//                     child: // Icon(Icons.plus_one_outlined),
//                         Text(
//                       "+4",
//                     ),
//                   ),
//                 ],
//               )
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var img_list = [
    "https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY=",
    "https://thumbs.dreamstime.com/b/burger-fire-black-background-site-171833570.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhxAuKaPWvP1oLlrk8zSTy031ijietbU8tkg&usqp=CAU",
    "https://img.freepik.com/free-photo/side-view-double-cheeseburger-with-grilled-beef-patties-cheese-lettuce-leaf-burger-buns_141793-4883.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          //appBar: AppBar(),
          body: ListView.builder(
              itemCount: img_list.length,
              itemBuilder: (((context, index) {
                return GestureDetector(
                  onTap: (() {
                    print("hii");
                  }),
                  child: Column(
                    children: [
                      Column(children: [
                        Container(
                          child: Image.network(
                              "https://www.mcdonalds.com/content/dam/sites/usa/nfl/publication/1PUB_Desktop_Deals-v1_1168x520.jpg"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: Colors.yellow,
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Image.network(
                                "https://eastlakeohio.com/wp-content/uploads/2018/10/mcdonald-s-logo-0D95A820B2-seeklogo.com_.png",
                                height: 50,
                                width: 50,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 200, top: 10),
                              color: Colors.yellow,
                              height: 50,
                              width: 120,
                              child: Center(
                                  child: Text(
                                "MC Donald's",
                                style: TextStyle(fontSize: 20),
                              )),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                                child: Text(
                              "4.9 200+ Ratings",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 48, 45, 45)),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.location_on,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                                child: Text(
                              "Location",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 48, 45, 45)),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 380,
                              color: Color.fromARGB(255, 136, 116, 55),
                              margin: EdgeInsets.all(2),
                              child: Center(
                                  child: Text(
                                "Offer    Burgers   Pizza    Meals     Chikan",
                                style: TextStyle(fontSize: 18),
                              )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Image.network(
                                img_list[index],
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Text(
                              "Item_List \n 5.0 R",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 52, 50, 50),
                                  fontSize: 18),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 145),
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(child: Icon(Icons.plus_one_outlined))
                          ],
                        )
                      ]),
                    ],
                  ),
                );
              })))),
    );
  }
}
