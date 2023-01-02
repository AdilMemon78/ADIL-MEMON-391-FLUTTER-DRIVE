import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _homepageState();
}

class _homepageState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black12),
      child: Image.network(
        'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
