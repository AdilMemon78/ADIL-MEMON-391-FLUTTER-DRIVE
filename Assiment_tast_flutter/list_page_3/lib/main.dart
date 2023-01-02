import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MainState();
}

class _MainState extends State<MyApp> {
  var title_list = ["Delhi", "London", "Vancouver", "New York"];
  var dcc_list = [
    " India\n Population:19 mill ",
    " Britin\n Population:8mill",
    " Canada\n Population:2.4 mill",
    " USA\n Population:8.1 mill"
  ];

  var img_list = [
    "https://image.shutterstock.com/image-photo/new-delhi-india-march-2019-260nw-1382845190.jpg",
    "https://media.gettyimages.com/photos/london-big-ben-and-traffic-on-westminster-bridge-picture-id174726708?s=612x612",
    "https://thumbs.dreamstime.com/b/beautiful-view-downtown-vancouver-skyline-british-columbia-canada-sunset-161158313.jpg",
    "https://media.istockphoto.com/photos/new-york-city-nyc-usa-picture-id615398376?k=20&m=615398376&s=612x612&w=0&h=5PVCORPJEjAxSy_Hei_hSK3OtNJMz8SHDicMN2R4X60=",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cites around world"),
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow,
        ),
        body: ListView.builder(
          itemCount: title_list.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: (() {}),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 152,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  img_list[index],
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    title_list[index],
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              dcc_list[index],
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 104, 90, 90)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
