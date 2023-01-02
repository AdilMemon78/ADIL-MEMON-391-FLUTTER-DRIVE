import 'package:flutter/material.dart';

class order_page extends StatefulWidget {
  const order_page({Key? key}) : super(key: key);

  @override
  State<order_page> createState() => _order_pageState();
}

class _order_pageState extends State<order_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 28,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fill order Detail",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(162, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "First Name",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Last Name",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Mobile number",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Address",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "CIty",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Post/Zip code",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffffb608),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
