import 'package:flutter/material.dart';
import 'package:shade_prefrence/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  
  get Get => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("loginpage"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.blueAccent,
                child: Text("login"),
                onPressed: () async {
                  final SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.setString('email', email.text);
                  Get.to(const homepage());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
