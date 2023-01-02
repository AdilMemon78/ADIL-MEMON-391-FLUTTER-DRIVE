import 'package:class_pre/main.dart';
import 'package:class_pre/pages/1_Myexpaence.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Expence extends StatefulWidget {
  const Expence({super.key});

  @override
  State<Expence> createState() => _ExpenceState();
}

class _ExpenceState extends State<Expence> {
  TextEditingController name = TextEditingController();
  TextEditingController Money = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Myapp()),
                    ),
                  );
                }),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ), 
            ],
          ),
          Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image.asset(
                    "assets/images_1/0.o.png",
                    // fit: BoxFit.fill,
                    height: 180,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "MY EXPENCE",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      TextField(
                        controller: Money,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              size: 30,
                              color: Color.fromARGB(255, 202, 186, 186),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            labelText: "Enter Name"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Column(
                          children: [
                            TextField(
                              keyboardType: TextInputType.number,
                              controller: name,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.attach_money_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 202, 186, 186),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  labelText: "Amount"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => NextScreeen(
                                        name: name.text,
                                        money: Money.text,
                                      ))));
                        }),
                        child: Text(
                          "SAVE",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey[850]),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
