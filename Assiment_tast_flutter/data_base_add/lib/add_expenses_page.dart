import 'package:data_base_add/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddExpencesPgae extends StatefulWidget {
  const AddExpencesPgae({super.key});

  @override
  State<AddExpencesPgae> createState() => _AddExpencesPgaeState();
}

class _AddExpencesPgaeState extends State<AddExpencesPgae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Add Expences",
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 45, 148, 46)),
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          color: Colors.green,
          padding: EdgeInsets.all(12),
          child: Container(
            height: 200,
            color: Color.fromARGB(255, 224, 247, 225),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.green,
                        size: 32,
                      ),
                      label: Text(
                        "ID",
                        style: TextStyle(color: Colors.green),
                      ),
                      hintText: "Enter Id",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                        "Month",
                        style: TextStyle(color: Colors.green),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent)),
                      icon: Icon(
                        Icons.title,
                        color: Colors.green,
                        size: 32,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.savings,
                        color: Colors.green,
                        size: 32,
                      ),
                      label: Text(
                        "Title",
                        style: TextStyle(color: Colors.green),
                      ),
                      hintText: "Title",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.date_range,
                        color: Colors.green,
                        size: 32,
                      ),
                      label: Text(
                        "date",
                        style: TextStyle(color: Colors.green),
                      ),
                      hintText: "Date",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.attach_money,
                        color: Colors.green,
                        size: 32,
                      ),
                      label: Text(
                        "Amount",
                        style: TextStyle(color: Colors.green),
                      ),
                      hintText: "Amount",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.greenAccent)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => MyHomePage())));
                }),
                child: Text("Save")),
          ],
        )
      ]),
    );
  }
}
