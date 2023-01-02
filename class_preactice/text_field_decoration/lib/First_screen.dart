import 'package:flutter/material.dart';
import 'package:text_field_decoration/Secound_screen.dart';

class First_screen extends StatefulWidget {
  const First_screen({Key? key}) : super(key: key);

  @override
  State<First_screen> createState() => _First_screenState();
}

class _First_screenState extends State<First_screen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: namecontroller,
            decoration: InputDecoration(
              hintText: "Enter a name  ",
              labelText: "name",
              labelStyle: TextStyle(color: Colors.blue),
              hintStyle: TextStyle(color: Colors.blue),
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: contactController,
            decoration: InputDecoration(
              hintText: "Enter a contect  ",
              labelText: "contact",
              labelStyle: TextStyle(color: Colors.blue),
              hintStyle: TextStyle(color: Colors.blue),
              prefixIcon: Icon(Icons.call),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              child: Text("Send"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Secound_screen(
                              name: namecontroller.text.toString(),
                              contact: contactController.text.toString(),
                            ))));
              },
            )),
      ]),
    );
  }
}
