import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MainState();
}

class _MainState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Forest"),
            Icon(
              Icons.forest_outlined,
              size: 25,
              color: Colors.white,
            )
          ],
        )),
        body: Container(
          // margin: EdgeInsets.only(left: 350),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1497864149936-d3163f0c0f4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bG9naW58ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
                  fit: BoxFit.fill)),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 600,
                width: 350,
                color: Colors.white,
                child: Column(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU3HAU_knClOefODxjF4z7j8giZGZiX6QSOA&usqp=CAU",
                      height: 250,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          labelText: "Enter Your Phonenumber,Email",
                          prefixIcon: Icon(Icons.login),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple))),
                    ),
                    SizedBox(
                      height: 5,
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
                    TextButton(
                      onPressed: () {},
                      child: Text("Login/Signup"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("ForgetPassword?"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Image.network(
                    //   "https://thumbs.dreamstime.com/b/autumn-nature-landscape-colorful-forest-autumn-nature-landscape-colorful-forest-morning-sunlight-131400332.jpg",
                    //   height: 80,
                    //   width: 150,
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // FloatingActionButton.extended(
                    //     onPressed: () {}, label: Icon(Icons.home_filled))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
