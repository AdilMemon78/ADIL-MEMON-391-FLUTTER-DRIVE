import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class url_view extends StatefulWidget {
  const url_view({super.key});

  @override
  State<url_view> createState() => _url_viewState();
}

class _url_viewState extends State<url_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ElevatedButton(
          child: Center(child: Text("Click here")),
          onPressed: () async {
            const url = "http://www.gamil.com";

            if (await canLaunch(url));
            await launch(url);
          },
        ),
      ),
    );
  }
}
