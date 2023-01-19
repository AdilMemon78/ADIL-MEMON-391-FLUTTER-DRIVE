import 'package:fire_base_pp1/custom_widget/button_widget.dart';
import 'package:fire_base_pp1/custom_widget/text_field.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController _emaillogincontroller = TextEditingController();
  TextEditingController _passwordlogincontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text("Login"),
            ),
            SizedBox(
              height: 10,
            ),
            myTextField("Enter Email", "Email", false, Icons.email,
                _emaillogincontroller),
            SizedBox(
              height: 10,
            ),
            myTextField("Enter Password", "Password", true, Icons.password,
                _emaillogincontroller),
            SizedBox(
              height: 20,
            ),
            customButton("Login"),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text("New user | Click here for create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
