import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dr_Adil extends StatefulWidget {
  const Dr_Adil({super.key});

  @override
  State<Dr_Adil> createState() => _Dr_AdilState();
}

class _Dr_AdilState extends State<Dr_Adil> {
  int total = 0;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("lib/images/doctor1.jpg"),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fees Paid ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Therapy",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$100",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: (() {
                      total = (total + 300);
                      print("Total Fees is $total");
                      count = (count + 1);
                      print("Total Pesent count is $count");
                    }),
                    child: Icon(CupertinoIcons.add)),
                ElevatedButton(
                    onPressed: (() {
                      total = (total - 300);
                      print("Total Fees cancel is $total");
                      count = (count - 1);
                      print("Total Pesent count is $count");
                    }),
                    child: Icon(CupertinoIcons.minus))
              ],
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
