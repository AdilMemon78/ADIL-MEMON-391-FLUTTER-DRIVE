// import 'package:flutter/material.dart';

// class login extends StatefulWidget {
//   @override
//   _loginState createState() => _loginState();
// }

// class _loginState extends State<login> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//                 'https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   filled: true,
//                   fillColor: Colors.white,
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter email';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   filled: true,
//                   fillColor: Colors.white,
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter password';
//                   }
//                   return null;
//                 },
//               ),
//               GestureDetector(
//                 onTap: () {
//                   if (_formKey.currentState!.validate()) {
//                     // Log in
//                   }
//                 },
//                 child: Text('Login'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trawel_project/Hayat_hotel_places/2_hayat_hotel.dart';
import 'package:trawel_project/firebase/phone_page.dart';
import 'package:trawel_project/welcome_page_1.dart';

import 'package:carousel_slider/carousel_slider.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

var name = "";
bool changeButton = false;

class _loginState extends State<login> {
  var emailController = TextEditingController();
  var contactController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool securePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/adil01.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  height: 100,
                  width: 400,
                  // color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Center(
                          child: Text("Welcome to Memon trawels",
                              style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800,
                                color: Colors.black54,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: TextFormField(
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
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: TextFormField(
                    //keyboardType: TextInputType.emailAddress,
                    obscureText: securePassword,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return "Please enter Password ";
                      }
                      return null;
                    },
                    controller: contactController,
                    decoration: InputDecoration(
                      //  labelText: "Contact.No",
                      prefixIcon: Icon(Icons.lock),

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
                      hintText: "Enter Password",

                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 59, 11, 11)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        onPressed: (() {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Histery_1())),
                            );
                          }
                        }),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => phone_page())),
                      );
                    }),
                    child: Text(
                      "another option",
                      style: TextStyle(color: Color.fromARGB(255, 112, 0, 150)),
                    ))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
