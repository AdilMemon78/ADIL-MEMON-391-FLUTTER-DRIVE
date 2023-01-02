import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trawel_project/welcome_page_1.dart';

import 'package:carousel_slider/carousel_slider.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

var name = "";

class _loginState extends State<login> {
  var emailController = TextEditingController();
  var contactController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool securePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/236x/0c/ca/37/0cca37a417846e05426d089ddd755c10.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 100,
                    width: 400,
                    // color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              "Welcome to Memon trawels,$name",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://www.shutterstock.com/image-vector/lets-travel-world-tour-vector-260nw-1973329529.jpg",
                      fit: BoxFit.fill,
                      height: 250,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                      controller: emailController,
                      validator: ((value) {
                        if (value!.trim().isEmpty) {
                          return "Please enter Email Adress";
                        }
                        return null;
                      }),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 222, 209, 209)),
                        hintText: "Enter E-mail",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          print("your name is -------> $name");
                        });
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: securePassword,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Please enter contact number ";
                      }
                      return null;
                    },
                    controller: contactController,
                    decoration: InputDecoration(
                      labelText: "Contact.No",
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              securePassword = !securePassword;
                            });
                          },
                          icon: securePassword
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 222, 209, 209)),
                      hintText: "Mobile number",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)))),
                      onPressed: (() {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Histery_1())));
                        }
                      }),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
