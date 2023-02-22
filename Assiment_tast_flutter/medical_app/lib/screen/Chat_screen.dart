import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_app/widgets/chat_sample.dart';

class Chat_screen extends StatefulWidget {
  const Chat_screen({super.key});

  @override
  State<Chat_screen> createState() => _Chat_screenState();
}

class _Chat_screenState extends State<Chat_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            //actions: [Icon(Icons.arrow_back)],
            backgroundColor: Colors.blue,
            leadingWidth: 30,

            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("lib/images/doctor1.jpg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Dr.Adil",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 8, right: 15),
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, right: 10),
                child: Icon(
                  Icons.video_call,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, right: 10),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 26,
                ),
              )
            ],
          ),
          preferredSize: Size.fromHeight(70)),
      body: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) => chatsample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10)
        ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.amber,
                  size: 30,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.6,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Type Somthing", border: InputBorder.none),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
