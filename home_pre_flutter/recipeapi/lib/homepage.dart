import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipeapi/model.dart';

import 'model.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(
                width: 10,
              ),
              Text("Food Recipie"),
            ],
          ),
        ),
        body: FutureBuilder(
            future: getdata(),
            builder: (context, Snapshot) {
              if (Snapshot.hasData) {
                return ListView.builder(
                  itemCount: Photos.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 290,
                      color: Colors.greenAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "album Id --->${Photos[index].albumId}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Id --->${Photos[index].id}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Title ---> ${Photos[index].title}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "UrL ---> ${Photos[index].url}",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "ThumbnailUrl ---> ${Photos[index].thumbnailUrl}",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}

List<SamplePhotos> Photos = [];

Future<List<SamplePhotos>> getdata() async {
  final Response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  var data = jsonDecode(Response.body.toString());

  if (Response.statusCode == 200) {
    for (Map<String, dynamic> index in data) {
      Photos.add(SamplePhotos.fromMap(index));
    }
    return Photos;
  } else {
    return Photos;
  }
}
