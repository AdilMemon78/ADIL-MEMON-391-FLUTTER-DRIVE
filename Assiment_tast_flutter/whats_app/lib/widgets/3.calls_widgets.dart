import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calls_widgets extends StatefulWidget {
  const calls_widgets({super.key});

  @override
  State<calls_widgets> createState() => _calls_widgetsState();
}

class _calls_widgetsState extends State<calls_widgets> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i < 5; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/$i.jpg",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dear",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call_made,
                                color: Color(0xff075e55),
                                size: 19,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "(1) Today, 12:57",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        Icons.call,
                        color: Color(0xff075e55),
                      ),
                    )
                  ],
                ),
              ),
            for (int i = 6; i <= 12; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/$i.jpg",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dear",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.call_received,
                                color: Colors.red,
                                size: 19,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "(1) Today, 12:57",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(
                        // CupertinoIcons.videocam_fill,
                        Icons.videocam,
                        color: Color(0xff075e55), size: 27,
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
