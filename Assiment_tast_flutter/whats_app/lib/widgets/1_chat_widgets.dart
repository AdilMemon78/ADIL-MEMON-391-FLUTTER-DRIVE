import 'package:flutter/material.dart';

import '../pages/3_chats_page.dart';

class chat_widget extends StatefulWidget {
  const chat_widget({super.key});

  @override
  State<chat_widget> createState() => _chat_widgetState();
}

class _chat_widgetState extends State<chat_widget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i <= 10; i++)
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => chats_page())));
                },
                child: Container(
                  //color: Colors.white70,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "images/$i.jpg",
                          height: 65,
                          width: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Programers",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Hi,Programes how are you ?",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "12:15",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff0fce5e),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                                color: Color(0xff0fce5e),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
