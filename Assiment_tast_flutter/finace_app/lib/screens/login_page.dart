import 'package:finace_app/Data/List_data.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 340, child: _head()),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transations History",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(((context, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "images/${geter()[index].image!}",
                  height: 40,
                ),
              ),
              title: Text(
                geter()[index].name!,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(geter()[index].time!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
              trailing: Text(
                geter()[index].fee!,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: geter()[index].buy! ? Colors.red : Colors.green),
              ),
            );
          }), childCount: geter().length))
        ],
      )),
    );
  }
}

Widget _head() {
  return Stack(
    children: [
      Column(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
                color: Color(0xff368983),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Stack(children: [
              Positioned(
                  top: 35,
                  left: 340,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Color.fromRGBO(250, 250, 250, 0.1),
                      child: Icon(
                        Icons.notification_add_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Column(
                  children: [
                    Text(
                      "Good afternoon",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 224, 223, 223)),
                    ),
                    Text(
                      "Enjelin Morgeana",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
      Positioned(
        top: 160,
        left: 37,
        child: Container(
          height: 170,
          width: 320,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(47, 125, 121, 0.3),
                    offset: Offset(0, 6),
                    blurRadius: 12,
                    spreadRadius: 6)
              ],
              color: Color.fromARGB(255, 47, 125, 121),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Baance",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      "\$ 2,957.00",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Color.fromARGB(255, 85, 145, 141),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                            size: 19,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "income",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Color.fromARGB(255, 85, 145, 141),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                            size: 19,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Expances",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ 1,450",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "\$ 450",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
