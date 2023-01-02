import 'package:flutter/material.dart';
import 'package:os_practice/url_view.dart';
import 'package:url_launcher/url_launcher.dart';

class sms_luncher extends StatelessWidget {
  const sms_luncher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sms"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => url_view())));
            },
            child: Icon(
              Icons.arrow_right_alt,
              size: 50,
            ),
          ),
        ],
      ),
      body: Container(
        child: ElevatedButton(
          child: Text("Send sms"),
          onPressed: () async {
            var url = Uri.parse("sms:1234567890");

            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              throw "invalid url";
            }
          },
        ),
      ),
    );
  }
}
