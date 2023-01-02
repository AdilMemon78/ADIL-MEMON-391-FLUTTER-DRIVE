import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class exit extends StatelessWidget {
  const exit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 550, left: 200),
        child: Center(
          child: TextButton(
            onPressed: () {
              displayalert(context);
            },
            child: Text("Click here"),
          ),
        ),
      ),
    );
  }

  void displayalert(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("Alert"),
      content: Text("Are you sure you want to close this!"),
      actions: [
        TextButton(
          onPressed: () {
            if (Platform.isWindows) {
              SystemNavigator.pop();
            } else if (Platform.isWindows) {
              exit();
            }
          },
          child: Text("yes"),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              //  print("are you sure want contuine");
            },
            child: Text("No")),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("")),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
