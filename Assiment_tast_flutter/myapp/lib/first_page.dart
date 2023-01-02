import 'package:flutter/material.dart';
import 'package:myapp/secound_page.dart';

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: Center(
              child: Text(
            "Adil's App",
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300),
          )),
        ),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text(
            "New Project..",
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                print("Search Option");
              },
              icon: Icon(
                Icons.search,
                // color: Colors.amber,
              ),
            ),
            IconButton(
              onPressed: () {
                print("Settings");
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnR7BnKOqd-uv3zAqipnSG_mHiBlQGw2x4yQ&usqp=CAU"),
            fit: BoxFit.fill,
          )),
          height: 100,
          width: 100,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrNXfJg15YqUbIUNXplMck1lMbyG-Znsghow&usqp=CAU"),
                height: 150,
                width: 300,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Welcome,",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              // SizedBox(
              //   height: 0,
              // ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "First example@gmail.com",
                    labelText: "Enter E-mail",
                    prefixIcon: Icon(Icons.email),
                    //   fillColor: Colors.red,
                    labelStyle: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 61, 56, 55),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    //  prefixIconColor: Colors.black,
                  ),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Enter Your password",
                    prefixIcon: Icon(Icons.remove_red_eye),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple))),
              ),
              SizedBox(
                height: 15,
              ),
              //TextButton(onPressed: () {}, child),
              Container(
                height: 45,
                width: 90,
                color: Colors.amberAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  print("Enter a new Password");
                },
                child: Text(
                  "ForgetPassword?",
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurpleAccent),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    print("hello");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => secound_page()));
                  },
                  child: Text("Secound Page"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
