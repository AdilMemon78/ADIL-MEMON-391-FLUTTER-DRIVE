import 'package:flutter/material.dart';
import 'package:qwiz_app/main.dart';

class Screen_change extends StatelessWidget {
  final int score;
  const Screen_change(this.score, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color maincolor = Color(0xFF252c4a);
    Color secoundcolor = Color(0xFF117eeb);

    return Scaffold(
      backgroundColor: maincolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Congratulation",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "your score is :",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "${score}",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => HomePage())));
            },
            elevation: 0.0,
            color: Colors.orange,
            textColor: Colors.white,
            child: Text("Repit the Qwiz "),
          )
        ],
      ),
    );
  }
}
