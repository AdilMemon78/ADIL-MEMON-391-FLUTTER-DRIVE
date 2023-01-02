import 'package:flutter/material.dart';

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
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Name",
                    errorText: _namevalideter ? "name must be reqvired" : null,
                    labelText: "Enter name"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
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
                decoration: InputDecoration(
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
                      onPressed: (() {
                        setState(() {
                          if (_namecontroller.text.isEmpty) {
                            _namevalideter = true;
                          } else if (emailcontroller.text.isEmpty) {
                            _namevalideter = false;
                            _emailvalideter = true;
                          } else if (contactcontroller.text.isEmpty) {
                            _contactvalideter = true;
                            _namevalideter = false;
                            _emailvalideter = false;
                          } else {
                            _namevalideter = false;
                            _emailvalideter = false;
                            _contactvalideter = false;
                          }
                        });
                      }),
                      child: Text("Save")),
                  ElevatedButton(
                      onPressed: (() {
                        setState(() {
                          _namecontroller.text = "";
                          emailcontroller.text = "";
                          contactcontroller.text = "";
                        });
                      }),
                      child: Text("Delete"))
                ],
              )
            ],
          ),
        )));
  }
}
