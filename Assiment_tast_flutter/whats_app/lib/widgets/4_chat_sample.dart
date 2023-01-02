import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class Chat_sample extends StatefulWidget {
  const Chat_sample({super.key});

  @override
  State<Chat_sample> createState() => _Chat_sampleState();
}

class _Chat_sampleState extends State<Chat_sample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "Hi,Devloper, How are you?",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Color(0xffe4fdca)),
              child: Text(
                "Hi,Programr, I am fine and well. thanks for asking and what about you. I hope will be fine",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        )
      ],
    );
  }
}
