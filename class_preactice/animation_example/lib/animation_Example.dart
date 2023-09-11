import 'package:flutter/material.dart';

class animation_example extends StatefulWidget {
  const animation_example({super.key});

  @override
  State<animation_example> createState() => _animation_exampleState();
}

class _animation_exampleState extends State<animation_example> {
  double _opacity = 1;
  double margin = 0;
  double _width = 200;
  double _hight = 300;
  Color _color = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animation",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        margin: EdgeInsets.all(margin),
        width: _width,
        color: _color,
        height: _hight,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    margin = 80;
                  });
                },
                child: Text("Animated")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _color = Colors.yellow;
                    _color = Colors.black;
                    _color = Colors.green;
                    _color = Colors.blueGrey;
                    _color = Colors.blue;
                    _color = Colors.deepOrange;
                  });
                },
                child: Text("colour")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _width = 400;
                  });
                },
                child: Text("width")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _hight = 600;
                  });
                },
                child: Text("hight")),
          ],
        ),
      ),
    );
  }
}
