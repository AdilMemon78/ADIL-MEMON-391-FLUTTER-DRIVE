import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trawel_project/pages_file/login_peg.dart';

class settings extends StatefulWidget {
  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  SharedPreferences? logindata;
  String? username;
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata?.getString('username');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Logout",
          style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
                  alignment: Alignment.bottomLeft,
                  child: Expanded(
                    child: Text(
                      "User E-Mail name is: $username ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 450,
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: (() {
                      logindata?.setBool('login', true);
                      print("Logout");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login(),
                          ));
                    }),
                    child: Text("Logout")),
              )
            ],
          )
        ],
      ),
    );
  }
}
