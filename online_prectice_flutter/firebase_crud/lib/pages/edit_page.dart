import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class editpage extends StatefulWidget {
  final String id;
  editpage({Key? key, required this.id}) : super(key: key);

  @override
  State<editpage> createState() => _editpageState();
}

class _editpageState extends State<editpage> {
  final _formkey = GlobalKey<FormState>();

  CollectionReference student =
      FirebaseFirestore.instance.collection('students');

  Future<void> updateuser(id, name, email, password) {
    return student
        .doc(id)
        .update({'name': name, 'email': email, 'password': password})
        .then((value) => print("User updated"))
        .catchError((onError) => print("Faild to update:$Error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Student'),
      ),
      body: Form(
          key: _formkey,

          // Getting speccific data
          child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            future: FirebaseFirestore.instance
                .collection('student')
                .doc(widget.id)
                .get(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print("Somthing Went Wrong");
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              var data = snapshot.data!.data();
              var name = data!['name'];
              var email = data['email'];
              var password = data['password'];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        initialValue: name,
                        autofocus: false,
                        onChanged: (value) => name = value,
                        decoration: InputDecoration(
                          labelText: 'name',
                          labelStyle: TextStyle(fontSize: 20),
                          border: OutlineInputBorder(),
                          errorStyle: TextStyle(color: Colors.redAccent),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter name';
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        initialValue: email,
                        autofocus: false,
                        onChanged: (value) => email = value,
                        decoration: InputDecoration(
                          labelText: 'EMail',
                          labelStyle: TextStyle(fontSize: 20),
                          border: OutlineInputBorder(),
                          errorStyle: TextStyle(color: Colors.redAccent),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter EMail';
                          } else if (!value.contains('@')) {
                            return 'Please Your right email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        initialValue: password,
                        autofocus: false,
                        onChanged: (value) => password = value,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 20),
                          border: OutlineInputBorder(),
                          errorStyle: TextStyle(color: Colors.redAccent),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Password';
                          }
                        },
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: (() {
                                if (_formkey.currentState!.validate()) {
                                  updateuser(widget.id, name, email, password);
                                  Navigator.pop(context);
                                }
                              }),
                              child: Text(
                                "Update",
                                style: TextStyle(fontSize: 18),
                              )),
                          ElevatedButton(
                            onPressed: (() => {}),
                            child: Text(
                              "Resert",
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
