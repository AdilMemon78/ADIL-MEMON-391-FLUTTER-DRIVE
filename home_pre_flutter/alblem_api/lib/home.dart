import 'dart:convert';

import 'package:alblem_api/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                itemCount: userDetail.length,
                itemBuilder: ((context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: EdgeInsets.only(bottom: 10),
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        getText(index, 'Id', userDetail[index].id.toString()),
                        getText(
                            index, 'name', userDetail[index].name.toString())
                      ],
                    ),
                  );
                }));
          }
        });
  }

  Text getText(int index, String fieldName, String conttent) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: fieldName,
          style: TextStyle(
            fontSize: 16,
          )),
      TextSpan(
          text: conttent,
          style: TextStyle(
            fontSize: 16,
          )),
      TextSpan(text: 'data'),
    ]));
  }

  List<UserDetail> userDetail = [];

  Future<List<UserDetail>> getdata() async {
    final responce =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data = jsonDecode(responce.body.toString());
    if (responce.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        userDetail.add(UserDetail.fromMap(index));
      }
      return userDetail;
    } else {
      return userDetail;
    }
  }
}
