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
  var title_list = [
    "Palak Paneer",
    "Jeera Rice",
    "Buttern Nan ",
    "Gulabjam",
    "Palak Paneer",
  ];
  var line = ["-------", "--------", "--------", "--------", "---------"];

  var img_list = [
    "https://media.istockphoto.com/photos/palak-paneer-or-spinach-and-cottage-cheese-curry-on-a-dark-background-picture-id1146291429?k=20&m=1146291429&s=612x612&w=0&h=qxIAJgcDlqCc7MfawkRQF7axtJcJaytCAgcvaCq8Kao=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwZLeKukKAbYV_tuwJpdrNbROXBU7lKEMKWg&usqp=CAU",
    "https://t4.ftcdn.net/jpg/02/52/31/93/360_F_252319323_I4hRMLLqmAs2SF6OcSOF5AFlWhMVGbgP.jpg",
    "data:image/jpeg;base64,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",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH_DiTDlIMrrunji-AQ9P-qyK445J27gkTtQ&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Recipes"),
          backgroundColor: Colors.red,
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [],
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
