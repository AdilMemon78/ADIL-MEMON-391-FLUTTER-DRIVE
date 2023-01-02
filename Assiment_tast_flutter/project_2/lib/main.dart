import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text("*Project*",
          style: TextStyle(color: Colors.amberAccent,fontSize:29,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
         // centerTitle: true,
          
          backgroundColor: Color.fromARGB(122, 147, 34, 28),
        ),
        drawer: Drawer(),
        body: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
               //   padding: EdgeInsets.symmetric(horizontal: 20),
               
                  height: 37,
                  width: double.maxFinite,
                  color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Strawberry Pavlova",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 30),
                    )
                  ],
                ),
              ),
              SizedBox(width: 20),
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                //alignment: Alignment.center,
                width: double.maxFinite,
                color: Colors.amber,
                child: Text(
                  " Pavlona is a meringue-based \n dessert named after the Russian \n balience Anna Pavlona .\n Pavlona feture a crisp crust and\n soft light inside topped with fruit\nand whispped cream.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 23),
                ),
              ),
              SizedBox(width: 30),
              Container(
                margin: EdgeInsets.all(16),
                height: 33,
                alignment: Alignment.center,
                width: double.maxFinite,
                color: Color.fromARGB(51, 102, 118, 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star,color: Colors.white,),
                    Icon(Icons.star),
                    Icon(Icons.star,color: Colors.white,),
                    Icon(Icons.star),
                    Icon(Icons.star,color: Colors.white,),
                    Text("170 Reviews",style: TextStyle(color: Colors.lightBlue,fontStyle: FontStyle.italic),)
                  ],
                ),
              ),
              SizedBox(),
              Container(
                margin: EdgeInsets.all(16),
                height: 100,
                alignment: Alignment.center,
                width: double.maxFinite,
                color: Colors.black,
                child: Column(
                  children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.contact_mail,
                        color: Colors.red,
                        size: 50,
                      ),
                      Icon(
                        Icons.menu_book_sharp,
                        color: Colors.purple,
                        size: 50,
                      ),
                      Icon(
                        Icons.mail_lock,
                        color: Colors.grey,
                        size: 50,
                      ),
                    ],
                  ),
                ]),
              ),
                
            ],
          ),
        ),
      ),
    );
  }
}