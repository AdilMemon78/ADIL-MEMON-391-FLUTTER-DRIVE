import 'package:flutter/material.dart';

class MyIos extends StatefulWidget {
  const MyIos({Key? key}) : super(key: key);

  @override
  State<MyIos> createState() => _MyIosState();
}

class _MyIosState extends State<MyIos> {
  var title_list = ["IPhon 11", "IPhon 12", "IPhon 13", "IPhone 14"];
  var disc_list = ["128 Gb", "256 Gb", "500 Gb", "1000Gb"];
  var img_list = [
    "https://m.media-amazon.com/images/I/71Ss-fT55eL.jpg",
    "https://m.media-amazon.com/images/I/41xssMLI2DL._AC_SY780_.jpg",
    "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664009695/Croma%20Assets/Communication/Mobiles/Images/243508_0_k6vatk.png/mxw_640,f_auto",
    "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1662655033/Croma%20Assets/Communication/Mobiles/Images/261983_ppxi5n.png/mxw_640,f_auto"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 49, 22, 22),
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => MyIos())));
                        }),
                        icon: Icon(Icons.arrow_back),
                        iconSize: 18,
                        color: Colors.yellow),
                  ],
                ),
              ),
              Container(
                height: 120,
                color: Color.fromARGB(255, 49, 22, 22),
                width: double.maxFinite,
                child: Container(
                  margin: EdgeInsets.only(bottom: 20, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMEbNjRRS0U2gHZbMkOWZ1VCTmLne6FqVJnA&usqp=CAU",
                              height: 50,
                              width: 50,
                            ),
                          )),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Mobile Studio 11",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 162, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(top: 400),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70)))),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          children: [
            Row(
              children: [
                Center(
                    child: Text(
                  "MS",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                )),
              ],
            ),
            Row(
              children: [
                Container(
                    child: Text(
                  "Mobile Studio",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                )),
              ],
            ),
            Row(
              children: [
                Container(
                    child: Text(
                  "The Mobile Shop",
                  style: TextStyle(color: Colors.red, fontSize: 10),
                )),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            iconSize: 18,
            color: Colors.yellow,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            iconSize: 18,
            color: Colors.yellow,
          ),
          IconButton(
            onPressed: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => MyIos())));
            }),
            icon: Icon(Icons.arrow_back),
            iconSize: 18,
            color: Colors.yellow,
          ),
        ],
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: ListView.builder(
          itemCount: title_list.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              child: Card(
                  child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 80,
                    width: 80,
                    child: Image.network(img_list[index]),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(title_list[index]),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              disc_list[index],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 97, 0, 92)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )),
            );
          }),
        ),
      ),
    );
  }
}
