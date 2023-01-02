import 'package:fire_base/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Fire_base());
}

class Fire_base extends StatefulWidget {
  const Fire_base({super.key});

  @override
  State<Fire_base> createState() => _Fire_baseState();
}

class _Fire_baseState extends State<Fire_base> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      );
    }));
  }
}
