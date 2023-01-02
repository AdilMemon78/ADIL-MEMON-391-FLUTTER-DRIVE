import 'package:flutter/material.dart';

import '../widgets/1_chat_widgets.dart';
import '../widgets/2.status_widgets.dart';
import '../widgets/3.calls_widgets.dart';
import '2.settings_page.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              backgroundColor: Color(0xff075e55),
              elevation: 0,
              title: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "WhatsApp",
                  style: TextStyle(fontSize: 21),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(top: 12, right: 15),
                  child: Icon(Icons.search),
                ),
                PopupMenuButton(
                    onSelected: (selected) {
                      if (selected == 5) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => setting_page())));
                      }
                    },
                    elevation: 10,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    iconSize: 28,
                    itemBuilder: (context) => [
                          PopupMenuItem(
                              child: Text(
                            "New Group",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                          PopupMenuItem(
                              value: 2,
                              child: Text(
                                "New broadcast",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )),
                          PopupMenuItem(
                              value: 3,
                              child: Text(
                                "Linked devices",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )),
                          PopupMenuItem(
                              value: 4,
                              child: Text(
                                "Starred messages",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )),
                          PopupMenuItem(
                              value: 5,
                              child: Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ))
                        ])
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color(0xff075e55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    // tabs 1.
                    Container(
                      width: 25,
                      child: Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    // tabs 2.
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2.0),
                      width: 90,
                      child: Tab(
                        child: Row(
                          children: [
                            Text("CHATS"),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff075e55),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // tabs 3.
                    Container(
                      width: 85,
                      child: Text("Status*"),
                    ),

                    //tabs 4.
                    Container(
                      width: 85,
                      child: Text("Calls"),
                    ),
                  ],
                ),
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      // tabs 1.
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          "images/seting_1.png",
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),

                      //tabs 2. chats widget
                      chat_widget(),
                      //tabs 3. status widgets
                      status_widgets(),
                      //tabs 4.calls widgets
                      calls_widgets(),
                    ],
                  ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xff075e55),
            child: Icon(Icons.message),
          ),
        ));
  }
}
