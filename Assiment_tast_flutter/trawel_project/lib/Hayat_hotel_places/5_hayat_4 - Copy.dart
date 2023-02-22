import 'package:flutter/material.dart';
import 'package:trawel_project/Hayat_hotel_places/hayat_bill.dart';

class Hayat_4 extends StatefulWidget {
  const Hayat_4({Key? key}) : super(key: key);

  @override
  State<Hayat_4> createState() => _Hayat_4State();
}

class _Hayat_4State extends State<Hayat_4> {
  TextEditingController myEdit = TextEditingController();
  var name = "";
  int total = 0;
  int count = 0;
  String? result = "";
  var nameController = TextEditingController();
  var contactController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  var num;

  @override
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
                controller: nameController,
                validator: ((value) {
                  if (value!.trim().isEmpty) {
                    return "Please Enter a Name";
                  }
                  return null;
                }),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
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
                  margin: EdgeInsets.only(top: 80),
                  child: TextFormField(
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
                    "Hotel price is \$4000",
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
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {
                    total = (total + 4000);
                    print("Your booking price is :-->$total");
                    setState(() {
                      count++;
                    });
                  },
                ),
                // Container(
                //   child: Text(
                //     "$count",
                //     style: Theme.of(context).textTheme.headline4,
                //   ),
                // ),
                ElevatedButton(
                  child: Icon(Icons.remove),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {
                    total = (total - 4000);
                    print("your buy cancel  price is :-->$total");
                    setState(() {
                      count--;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (() {
                    total;
                    if (_formKey.currentState!.validate())
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Bill_1(
                                name: " your best name is : $name",
                                num: " your number is : $num",
                                result: " your price is: $total"))),
                      );
                  }),
                  child: Text(
                    "Cheak Out",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 97, 91, 91)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
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
                  child: Text("Ticket book is :$total",
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
