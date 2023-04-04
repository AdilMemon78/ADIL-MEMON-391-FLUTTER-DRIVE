import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Phone_otp extends StatefulWidget {
  const Phone_otp({super.key});

  @override
  State<Phone_otp> createState() => _Phone_otpState();
}

class _Phone_otpState extends State<Phone_otp> {
  Future<FirebaseApp>? _firebaseApp;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firebaseApp = Firebase.initializeApp();
  }

  TextEditingController phonenumber = TextEditingController();
  TextEditingController otp = TextEditingController();

  bool loggin = false;
  String? uid;
  bool otpsent = false;
  String? _varifationId;

  void _varifyotp() async {
    final Credential = PhoneAuthProvider.credential(
        verificationId: _varifationId!, smsCode: otp.text);

    try {
      await FirebaseAuth.instance.signInWithCredential(Credential);
      if (FirebaseAuth.instance.currentUser != null) {
        setState(() {
          loggin = true;
          uid = FirebaseAuth.instance.currentUser!.uid;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  void _sendotp() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        //timeout: Duration(seconds: 30),
        verificationCompleted: verificationCompleted,
        phoneNumber: phonenumber.text,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
    setState(() {
      otpsent = true;
    });
  }

  void codeAutoRetrievalTimeout(String varificationId) {
    setState(() {
      _varifationId = varificationId;
      otpsent = true;
    });
  }

  void codeSent(String varificationId, int) {
    setState(() {
      otpsent = true;
      _varifationId = varificationId;
    });
  }

  void verificationFailed(FirebaseAuthException exception) {
    print(exception.message);
    setState(() {
      loggin = false;
      otpsent = false;
    });
  }

  void verificationCompleted(PhoneAuthCredential credential) async {
    await FirebaseAuth.instance.signInWithCredential(credential);
    if (FirebaseAuth.instance.currentUser != null) {
      setState(() {
        loggin = true;
        uid = FirebaseAuth.instance.currentUser!.uid;
      });
    } else {
      print("Faild to Sign In");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder(
            future: _firebaseApp,
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return CircularProgressIndicator();
              return loggin
                  ? Center(
                      child: Text("Welcome user!\n Your uid is $uid"),
                    )
                  : otpsent
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextFormField(
                                controller: otp,
                                decoration: InputDecoration(
                                    hintText: "Enter a otp ",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: _varifyotp, child: Text("Sign In"))
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextFormField(
                                controller: phonenumber,
                                decoration: InputDecoration(
                                    hintText: "Enter a Phone number",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Send Otp"))
                          ],
                        );
            })),
      ),
    );
  }
}
