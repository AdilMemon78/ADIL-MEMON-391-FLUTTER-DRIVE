import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Margin and padding Demo",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 100,
              width: 200,
              child: Text(
                "Hello there!",
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Text(
                "Welcome back",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 96, 91, 91)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  // hintText: "First example@gmail.com",
                  labelText: "Password",
                  //  prefixIcon: Icon(Icons.alternate_email_rounded),
                  //   fillColor: Colors.red,
                  labelStyle: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 96, 91, 91)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 200),
              child: Text("Forgot Password?"),
            ),
            Container(
              margin: EdgeInsets.all(8),
              height: 50,
              width: 350,
              color: Color.fromARGB(255, 50, 53, 54),
              child: Center(
                  child: Text(
                "Login",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  // hintText: "First example@gmail.com",
                  labelText: "\t\t\t\t\t\t\t\t\t\t\tSign in with Mobile",
                  prefixIcon: Icon(Icons.phone_android),
                  //   fillColor: Colors.red,
                  labelStyle: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  // hintText: "First example@gmail.com",
                  labelText: "\t\t\t\t\t\t\t\t\t\t\tSign in with Facebook",
                  prefixIcon: Icon(Icons.facebook),
                  //   fillColor: Colors.red,
                  labelStyle: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 170),
              child: Text("Don't have an account?"),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 200,
              ),
              child: Text(
                "Sign up here",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
