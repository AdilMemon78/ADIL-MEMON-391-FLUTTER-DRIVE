import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class phone_calling extends StatelessWidget {
  const phone_calling({super.key});

  get leading => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone call"),
      ),
      body: ElevatedButton(
        child: Center(child: Text("phone call")),
        onPressed: () {
        
        },
      ),
    );
  }
}
