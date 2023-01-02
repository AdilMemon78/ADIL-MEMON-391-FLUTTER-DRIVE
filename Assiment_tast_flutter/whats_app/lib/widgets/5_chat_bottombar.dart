import 'package:flutter/material.dart';

class Chat_bottombar extends StatefulWidget {
  const Chat_bottombar({super.key});

  @override
  State<Chat_bottombar> createState() => _Chat_bottombarState();
}

class _Chat_bottombarState extends State<Chat_bottombar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(fontSize: 19),
                    decoration: InputDecoration(
                        hintText: "Message", border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.attachment_outlined,
                  color: Colors.black38,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff00887a),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.mic,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
