// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

// class homepage extends StatefulWidget {
//   const homepage({super.key});

//   @override
//   State<homepage> createState() => _homepageState();
// }

// class _homepageState extends State<homepage> {
//   @override
//   Future<FirebaseApp>? _firebaseApp;
//   bool login = false;
//   String? name;
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _firebaseApp = Firebase.initializeApp();
//   }

//   void _signout() async {
//     await FirebaseAuth.instance.signOut();
//   }

//   void googlesignIn() async {
//     final googlesignIn = GoogleSignIn();
//     final signinaccount = await googlesignIn.signIn();

//     final googleaccountauthentioncation = await signinaccount?.authentication;
//     final Credential = GoogleAuthProvider.credential(
//         accessToken: googleaccountauthentioncation?.accessToken,
//         idToken: googleaccountauthentioncation?.idToken);
//     await FirebaseAuth.instance.signInWithCredential(Credential);
//     if (FirebaseAuth.instance.currentUser != null) {
//       print("Google Authencation successful");
//       print("${FirebaseAuth.instance.currentUser!.displayName} sign in");
//       setState(() {
//         login = true;
//         name = FirebaseAuth.instance.currentUser!.displayName;
//       });
//     } else {
//       print("unable to sign up!");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: FutureBuilder(builder: ((context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting)
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               login ? Text("$name") : Text(""),
//               ElevatedButton(
//                   onPressed: login ? _signout : googlesignIn,
//                   child: login ? Text("Sign out") : Text("Sign With google"))
//             ],
//           ),
//         );
//       })),
//     );
//   }
// }

class homepage extends StatefulWidget {
  const homepage({super.key});

  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $reslut");
      print(reslut.displayName);
      print(reslut.email);
      print(reslut.photoUrl);
    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        actions: [
          TextButton(
              onPressed: (() {}),
              child: Text(
                "Logout",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ))
        ],
      ),
      body: Center(
        child: ElevatedButton(onPressed: (() {}), child: Text("Google login")),
      ),
    );
  }
}
