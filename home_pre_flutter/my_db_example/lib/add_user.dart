import 'package:flutter/material.dart';
import 'package:my_db_example/service.dart';
import 'package:my_db_example/user.dart';

class add_user extends StatefulWidget {
  const add_user({Key? key}) : super(key: key);

  @override
  State<add_user> createState() => _add_userState();
}

class _add_userState extends State<add_user> {
  var _namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var contactcontroller = TextEditingController();

  var _namevalideter = false;
  var _emailvalideter = false;
  var _contactvalideter = false;

  var _studentservice = services();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add user"),
          centerTitle: true,
        ),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _namecontroller,
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Name",
                    errorText: _namevalideter ? "name must be reqvired" : null,
                    labelText: "Enter name"),
                onSaved: (newValue) {},
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Email",
                    errorText:
                        _emailvalideter ? "email must be reqvired" : null,
                    labelText: "Enter email"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: contactcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    icon: Icon(Icons.call),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Contact",
                    errorText:
                        _contactvalideter ? "contact be reqvired " : null,
                    labelText: "Contact number"),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: (() async {
                        setState(() {
                          // if (_namecontroller.text.isEmpty) {
                          //   _namevalideter = true;
                          // } else if (emailcontroller.text.isEmpty) {
                          //   _namevalideter = false;
                          //   _emailvalideter = true;
                          // } else if (contactcontroller.text.isEmpty) {
                          //   _contactvalideter = true;
                          //   _namevalideter = false;
                          //   _emailvalideter = false;
                          // } else {
                          //   _namevalideter = false;
                          //   _emailvalideter = false;
                          //   _contactvalideter = false;
                          // }
                          _namecontroller.text.isEmpty
                              ? _namevalideter = true
                              : _namevalideter = false;
                          contactcontroller.text.isEmpty
                              ? _contactvalideter = true
                              : _contactvalideter = false;
                          emailcontroller.text.isEmpty
                              ? _emailvalideter = true
                              : _emailvalideter = false;
                        });
                        if (_namevalideter == false &&
                            _contactvalideter == false &&
                            _emailvalideter == false) {
                          var _user = user();
                          _user.name = _namecontroller.text;
                          _user.email = emailcontroller.text;
                          _user.contact = contactcontroller.text;

                          var result = await _studentservice.saveUser(_user);
                          print("------> save user");
                        }
                      }),
                      child: Text("Save")),
                ],
              )
            ],
          ),
        )));
  }
}
