import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:my_tutorial_project_1/models/catlog_1.dart';
import 'package:my_tutorial_project_1/widget/drawer.dart';

import '../widget/item_widget.dart';

class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int days = 30;

  String name = "Adil";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catlogJson = await rootBundle.loadString("assets/files/catlog.json");
    var decodeddata = jsonDecode(catlogJson);
    var productdata = decodeddata["products"];
  }

  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(179, 107, 105, 105),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Adil's App.",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: Catalogmodel.Items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: Catalogmodel.Items[index],
          );
        },
      ),
      drawer: Mydrawer(),
    );
  }
}
