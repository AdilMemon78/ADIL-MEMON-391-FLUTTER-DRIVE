import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class result extends StatefulWidget {
  const result({super.key});

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  void initState() {
    getdata();
    // TODO: implement initState
    super.initState();

    print("Result Page open");
  }

  var session = [];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        //automaticallyImplyLeading: false,
        title: Text(
          "Results",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: listc,
            itemBuilder: ((context, index) {
              return Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                  height: 190,
                  child: Card(
                      child: Column(
                    children: [
                      Text(
                        session[index]['name'],
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.teal),
                      ),
                      Text(session[index]['session_id']),
                      Text(session[index]['fee_type']),
                      Text(session[index]['vaccine']),
                      Text(session[index]['date']),
                      Text(session[index]['state_name']),
                      Text(session[index]['address']),
                      Text(session[index]['date']),
                      Text(session[index]['from']),
                      Text(session[index]['to']),
                    ],
                  )));
            })),
      ),
    );
  }

  late var listc = 0;
  getdata() async {
    var url = Uri.parse(
        'https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByPin?pincode=452001&date=24-06-2022');
    var responce = await http.get(url);

    var decode = jsonDecode(responce.body);

    print(responce.body);

    session = decode['sessions'];

    setState(() {
      listc = session.length;
    });
  }
}
