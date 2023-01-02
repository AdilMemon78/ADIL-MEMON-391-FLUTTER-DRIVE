import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

void main() {
  runApp(Api());
}

Future<List<MyModel>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => new MyModel.fromJson(data)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  late Future<List<MyModel>> myfuturelist;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   myfuturelist = fetchData();
  // }

  void initState() {
    super.initState();
    myfuturelist = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Alblem Api"),
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
                  return GestureDetector(
                    onTap: () {
                      print(
                        " id is => ${mylist[index].id}",
                      );
                    },
                    child: Column(
                      children: [
                        Text(
                          mylist[index].userId!.toString(),
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          mylist[index].title,
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
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
