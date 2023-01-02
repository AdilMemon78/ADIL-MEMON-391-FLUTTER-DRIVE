import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/pages/1_first_page.dart';

import '../widgets/4_chat_sample.dart';
import '../widgets/5_chat_bottombar.dart';

class chats_page extends StatefulWidget {
  const chats_page({super.key});

  @override
  State<chats_page> createState() => _chats_pageState();
}

class _chats_pageState extends State<chats_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Color(0xff075e55),
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => firstpage())));
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              ),
            ),
            leadingWidth: 20,
            title: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "images/1.jpg",
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Programmer",
                            style: TextStyle(fontSize: 19),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Online",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white.withOpacity(.8)),
                          )
                        ],
                      ))
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 25),
                child: Icon(
                  CupertinoIcons.video_camera_solid,
                  size: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 20),
                child: Icon(
                  Icons.call,
                  size: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Icon(
                  Icons.more_vert,
                  size: 27,
                ),
              )
            ],
          ),
          preferredSize: Size.fromHeight(65)),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/backgound_1.webp",
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 80),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xfffff3c2),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: Row(
                    children: [
                      Icon(Icons.lock),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                        child: Text(
                          "Message and calls are and-to-end encrypted, No one outside of this chat can read or listen. Tap to learn more",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Chat_sample(),
                Chat_sample(),
                Chat_sample(),
                Chat_sample(),
                Chat_sample(),
                Chat_sample(),
                Chat_sample(),
                Chat_sample(),
                Chat_sample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Chat_bottombar(),
    );
  }
}
  