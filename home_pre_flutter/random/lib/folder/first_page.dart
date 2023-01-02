import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:random/folder/ios_page.dart';
import 'package:random/folder/samsung_page.dart';

class MyFirst extends StatefulWidget {
  const MyFirst({Key? key}) : super(key: key);

  @override
  State<MyFirst> createState() => _MyFirstState();
}

class _MyFirstState extends State<MyFirst> {
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
                                  builder: ((context) => MyFirst())));
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MS",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mobile Studio",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The Mobile Shop",
                  style: TextStyle(color: Colors.red, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.history))
        ],
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: CarouselSlider(
                items: [
                  Image.network(
                    "https://assets.mspimages.in/wp-content/uploads/2021/06/Latest-Smartphones-Launched-in-June.jpg",
                    height: 300,
                    width: 300,
                  ),
                  Image.network(
                    "https://www.91-cdn.com/hub/wp-content/uploads/2021/06/Phones-launched-in-June-1.jpeg",
                    height: 300,
                    width: 300,
                  ),
                  Image.network(
                    "https://assets.mspimages.in/wp-content/uploads/2022/06/5G-mobiles-under-Rs-20000.png",
                    height: 300,
                    width: 300,
                  )
                ],
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 100),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  //onPageChanged: callbackFunction,

                  scrollDirection: Axis.horizontal,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 50,
                    width: 50,
                  ),
                  ElevatedButton(
                    child: Image.network(
                      "https://images.samsung.com/is/image/samsung/assets/in/about-us/brand/logo/mo/360_197_1.png?",
                      height: 100,
                      width: 100,
                    ),
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Mysamsung())));
                    }),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 253, 254, 254)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(70)))),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 50,
                    width: 50,
                  ),
                  ElevatedButton(
                    child: Image.network(
                      "https://cdn.magicbytesolutions.com/assets/img/common/ios-app.png",
                      height: 100,
                      width: 100,
                    ),
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => MyIos())));
                    }),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(70)))),
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
