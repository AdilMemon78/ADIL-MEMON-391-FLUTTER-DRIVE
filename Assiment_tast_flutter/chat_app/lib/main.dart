import 'package:chat_app/helpers/helper_fun.dart';
import 'package:chat_app/pages/Login_page.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:chat_app/shared/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: constants.apiKey,
            appId: constants.appId,
            messagingSenderId: constants.messagingSenderId,
            projectId: constants.projectId));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _issign = false;

  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuserLoggedInStatus();
  }

  getuserLoggedInStatus() async {
    await helperfunction.getuserLoggedInStatus().then((value) {
      if (value != null) {
        _issign = value;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: _issign ? Home_page() : Login_page());
  }
}
