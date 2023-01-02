import 'package:data_base_add/add_expenses_page.dart';
import 'package:data_base_add/expences_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 224, 247, 225),
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 139, 250, 143),
                        Color.fromARGB(255, 28, 109, 30)
                      ]),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  // SizedBox(
                  //   width: 130,
                  //   child: CircleProgressBar(
                  //     foregroundColor: Colors.white54,
                  //     backgroundColor: Colors.black12,
                  //     value: 0.5,
                  //     child: AnimatedCount(
                  //       count: 0.5,
                  //       unit: '%',
                  //       duration: Duration(milliseconds: 500),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "RS. 10,000",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Out Of  RS. 20,000 Budgeting",
                        style: TextStyle(fontSize: 14, color: Colors.white54),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color.fromARGB(255, 139, 250, 143),
                                Color.fromARGB(255, 45, 148, 46)
                              ]),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text("Add Moeny")
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 60,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => AddExpencesPgae())));
            },
            child: Container(
              margin: EdgeInsets.all(8),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 139, 250, 143),
                      Color.fromARGB(255, 45, 148, 46)
                    ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/Expences.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "My Expense",
                    style: TextStyle(fontSize: 36, color: Colors.white70),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 139, 250, 143),
                    Color.fromARGB(255, 45, 148, 46)
                  ]),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset(
                    'assets/images/seaving.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "My Sevings",
                  style: TextStyle(fontSize: 36, color: Colors.white70),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
