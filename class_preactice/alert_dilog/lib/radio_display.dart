import 'package:flutter/material.dart';

enum Technology { paython, Android, Adil }

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  Technology tech = Technology.paython;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          ListTile(
            title: Text("Python Programming"),
            leading: Radio(
              value: Technology.paython,
              groupValue: tech,
              onChanged: (Technology? value) {
                setState(() {
                  tech = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Android Programming"),
            leading: Radio(
              value: Technology.Android,
              groupValue: tech,
              onChanged: (Technology? value) {
                setState(() {
                  tech = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Adil"),
            leading: Radio(
              value: Technology.Adil,
              groupValue: tech,
              onChanged: (Technology? value) {
                setState(() {
                  tech = value!;
                });
              },
            ),
          ),
        ]),
      ),
    );
  }
}
