import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class groupTile extends StatefulWidget {
  final String username;
  final String groupId;
  final String groupName;
  const groupTile(
      {super.key,
      required this.groupId,
      required this.groupName,
      required this.username});

  @override
  State<groupTile> createState() => _groupTileState();
}

class _groupTileState extends State<groupTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextScreen(
            context,
            ChatPage(
                groupId: widget.groupId,
                groupName: widget.groupName,
                userName: widget.username));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              widget.groupName.substring(0, 1).toUpperCase(),
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          title: Text(
            widget.groupName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Join the conversation ${widget.username}",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }
}
