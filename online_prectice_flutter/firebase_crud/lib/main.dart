import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  final Future<FirebaseApp> _intialization = Firebase.initializeApp();
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _intialization,
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            print("Somthing Went errer");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'Flutter crud',
              home: const HomePage(),
              debugShowCheckedModeBanner: false,
            );
          }
          return CircularProgressIndicator();
        }));
  }
}
