import 'package:flutter/material.dart';
import 'package:os_practice/sms_luncher.dart';
import 'package:url_launcher/url_launcher.dart';

class phone_calling extends StatelessWidget {
  const phone_calling({super.key});

  get leading => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone call"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => sms_luncher())));
            },
            child: Icon(
              Icons.arrow_right_alt,
              size: 50,
            ),
          ),
        ],
      ),
      body: ElevatedButton(
        child: Center(child: Text("phone call")),
        onPressed: () {
          launch("tel://840177389217");
        },
      ),
    );
  }
}
