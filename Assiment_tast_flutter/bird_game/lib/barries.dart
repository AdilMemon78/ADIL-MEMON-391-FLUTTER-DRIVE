import 'package:flutter/material.dart';

class barries extends StatelessWidget {
  final size;
  barries({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: size,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(width: 10, color: Colors.green.shade800),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
