import 'package:flutter/material.dart';

class Mysamsung extends StatefulWidget {
  const Mysamsung({Key? key}) : super(key: key);

  @override
  State<Mysamsung> createState() => _MysamsungState();
}

class _MysamsungState extends State<Mysamsung> {
  var title_list = ["Samsung SE", "Samsung a51", "Samsung a50", "Samsung s21"];
  var disc_list = ["128 Gb", "256 Gb", "500 Gb", "1000Gb"];
  var img_list = [
    "https://images.samsung.com/is/image/samsung/p6pim/in/galaxy-s21/gallery/in-galaxy-s21-5g-g996-sm-g996bzsdinu-368371784",
    "https://images.samsung.com/is/image/samsung/p6pim/in/galaxy-a52/gallery/in-galaxy-a52-a525-377908-sm-a525fzbgins-398875283",
    "https://www.gizbot.com/images/2019-02/samsung-galaxy-a50_1551357921140.jpg",
    "https://images.samsung.com/is/image/samsung/p6pim/in/galaxy-s21/gallery/in-galaxy-s21-5g-g996-sm-g996bzsdinu-368371784"
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
                                  builder: ((context) => Mysamsung())));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Mysamsung())));
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
