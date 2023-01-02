import 'package:flutter/material.dart';

class kingkong extends StatefulWidget {
  const kingkong({Key? key}) : super(key: key);

  @override
  State<kingkong> createState() => _homepageState();
}

class _homepageState extends State<kingkong> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black12),
      child: Image.network(
        'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014__340.jpg',
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
