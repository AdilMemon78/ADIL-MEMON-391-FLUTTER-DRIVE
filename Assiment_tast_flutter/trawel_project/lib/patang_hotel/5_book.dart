import 'package:flutter/material.dart';
import 'package:trawel_project/pages_file/login_peg.dart';
import 'package:trawel_project/patang_hotel/6_bill.dart';

class book extends StatefulWidget {
  const book({super.key});

  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  TextEditingController nameu = TextEditingController();
  TextEditingController contact = TextEditingController();
  var name = "";
  int total = 0;
  int total1 = 0;
  int count = 0;
  final _formKey = GlobalKey<FormState>();
  String? result = "";

  var num;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Billing",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              child: TextFormField(
                controller: nameu,
                validator: ((value) {
                  if (value!.trim().isEmpty) {
                    return "Please Enter a Name";
                  }
                  return null;
                }),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.nature),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  hintText: "Enter name",
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {
                    print("-------->$name");
                  });
                },
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: contact,
                    validator: ((value) {
                      if (value!.trim().isEmpty) {
                        return "Please Enter Contact number";
                      }
                      return null;
                    }),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: "Mobile No.",
                    ),
                    onChanged: (value) {
                      num = value;
                      setState(() {
                        print("Best number is----->$num");
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Hotel price is \$3500",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    total = (total + 3500);
                    total = (total1 = total);
                    print("Your booking price is :-->$total");
                    setState(() {
                      count++;
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                ),
                ElevatedButton(
                  child: Icon(Icons.remove),
                  onPressed: () {
                    total = (total - 3500);
                    total = (total1 = total);
                    print("your buy cancel  price is :-->$total");
                    setState(() {
                      count--;
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (() {
                    print("Your Ticket Booked Price is: $total1");
                    print("Your Ticket Count is:$count");
                    total;
                    if (_formKey.currentState!.validate())
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => patang_bill(
                                name: "your Best name is : $name",
                                num: "your number is : $num",
                                result: "Booking price is: $total"))),
                      );
                  }),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                  ),
                  child: Text(
                    "Cheak Out",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Ticket book is :$count",
                      style: //Theme.of(context).textTheme.headline4,
                          TextStyle(
                              color: Color.fromARGB(255, 11, 69, 117),
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Total Money is :$total",
                      style: //Theme.of(context).textTheme.headline4,
                          TextStyle(
                              color: Color.fromARGB(255, 11, 69, 117),
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  result!,
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
