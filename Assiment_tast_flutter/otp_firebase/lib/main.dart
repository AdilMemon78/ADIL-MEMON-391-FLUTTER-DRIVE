import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otp_firebase/otp_page.dart';
import 'package:otp_firebase/phone_page.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: phone_page(),
    );
  }
}
