import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud/pages/edit_page.dart';
import 'package:firebase_crud/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listpagestudent extends StatefulWidget {
  const listpagestudent({super.key});

  @override
  State<listpagestudent> createState() => _listpagestudentState();
}

class _listpagestudentState extends State<listpagestudent> {
  final Stream<QuerySnapshot> Studentstream =
      FirebaseFirestore.instance.collection('student').snapshots();

  CollectionReference student =
      FirebaseFirestore.instance.collection('student');
  Future<void> deleteuser(id) {
    print('USer Deleated $id');
    return student
        .doc(id)
        .delete()
        .then((value) => print('User Deleated'))
        .catchError((onError) => print('Faield to deleate user:$onError'));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: Studentstream,
        builder: ((BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            print("Somthing Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final List storedocs = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storedocs.add(a);
            a['id'] = document.id;
          }).toString();

          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Table(
                    border: TableBorder.all(),
                    columnWidths: const {1: FixedColumnWidth(140)},
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [
                        TableCell(
                            child: Container(
                          color: Colors.greenAccent,
                          child: Center(
                            child: Text(
                              "name",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                        TableCell(
                            child: Container(
                          color: Colors.greenAccent,
                          child: Center(
                            child: Text(
                              "E-mail",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                        TableCell(
                            child: Container(
                          color: Colors.greenAccent,
                          child: Center(
                            child: Text(
                              "Action",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                      ]),
                      for (var i = 0; i < storedocs.length; i++) ...[
                        TableRow(
                          children: [
                            TableCell(
                                child: Center(
                              child: Text(
                                storedocs[i]['name'],
                                style: TextStyle(fontSize: 18),
                              ),
                            )),
                            TableCell(
                                child: Center(
                              child: Text(
                                storedocs[i]['email'],
                                style: TextStyle(fontSize: 18),
                              ),
                            )),
                            TableCell(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) => editpage(
                                                  id: storedocs[i]['id']))));
                                    }),
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.purple,
                                    )),
                                IconButton(
                                    onPressed: (() =>
                                        {deleteuser(storedocs[i]['id'])}),
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )),
                              ],
                            )),
                          ],
                        ),
                      ]
                    ])),
          );
        }));
  }
}
