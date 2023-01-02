import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(
            Icons.e_mobiledata,
            color: Color.fromARGB(255, 122, 43, 37),
            size: 25,
          ),
          title: Text("Email"),
          //centerTitle: true,
          backgroundColor: Colors.lime,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          //  padding: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "First example@gmail.com",
                      labelText: "Enter Email",
                      prefixIcon: Icon(Icons.email),
                      //   fillColor: Colors.red,
                      labelStyle: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                      hintStyle: TextStyle(
                          color: Colors.yellow,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      prefixIconColor: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      labelText: "Enter Email",
                      prefixIcon: Icon(Icons.mark_email_unread),
                      //  fillColor: Colors.purple,
                      labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                      hintStyle: TextStyle(
                          color: Colors.blue,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      prefixIconColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      labelText: "Enter Email",
                      prefixIcon: Icon(Icons.mark_email_read),
                      // fillColor: Colors.purple,
                      labelStyle: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                      hintStyle: TextStyle(
                          color: Colors.blue,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      prefixIconColor: Colors.yellow,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(50)),
                      errorText: "opps ! Something Want wrong ",
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                TextField(
                  //   obscureText:true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Enter Password..",
                    prefixIcon: Icon(Icons.lock),
                    fillColor: Colors.purple,
                    labelStyle: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                    hintStyle: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    prefixIconColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
