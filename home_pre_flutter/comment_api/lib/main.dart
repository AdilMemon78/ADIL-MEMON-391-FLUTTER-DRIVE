import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';

import 'my_model.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(MyApiData());
}

Future<List<MyModel>> fetchData() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => new MyModel.fromJson(data)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class MyApiData extends StatefulWidget {
  const MyApiData({super.key});

  @override
  State<MyApiData> createState() => _MyApiDataState();
}

class _MyApiDataState extends State<MyApiData> {
  late Future<List<MyModel>> myfuturelist;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfuturelist = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("comment Api"),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder<List<MyModel>>(
          future: myfuturelist,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<MyModel> mylist = snapshot.data!;

              return ListView.builder(
                itemCount: mylist.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    height: 200,
                    width: 200,
                    child: GestureDetector(
                      onTap: () {
                        print(
                          " id is => ${mylist[index].id}",
                        );
                      },
                      child: Column(
                        children: [
                          Text(
                            mylist[index].name!,
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            mylist[index].e_mail!,
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            mylist[index].body!,
                            style: TextStyle(color: Colors.teal),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {}
            return CircularProgressIndicator();
          },
        ),
      ),
    ));
  }
}
