import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
