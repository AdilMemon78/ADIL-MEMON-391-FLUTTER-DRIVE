import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Datamodel.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

DataModel? _dataModel;

Future<Null> submitData(String name, String email) async {
  var responce = await http.post(
    Uri.parse(""),
    body: {"name": name, 'email': email},
    headers: {'content-type': 'application/json', 'Accept': 'application/json'},
  );

  var data = responce.body;

  print(data);

  if (responce.statusCode == 201) {
    String responceString = responce.body;

    dataModelFormjson(responceString);
  } else {
    return null;
  }
}

class _MyappState extends State<Myapp> {
  @override
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(40)),
            TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  hintText: "Enter name"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  hintText: "Enter email"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  String name = namecontroller.toString();
                  String email = emailcontroller.toString();

                  DataModel? dataModel = await submitData(name, email);

                  setState(() {
                    _dataModel = _dataModel;
                  });
                },
                child: Text("save"))
          ],
        ),
      ),
    );
  }
}
