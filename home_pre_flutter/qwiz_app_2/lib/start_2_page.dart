import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qwiz_app_2/qwiz_app_folder.dart/1_page.dart';

class game_Quiz extends StatefulWidget {
  const game_Quiz({super.key});

  @override
  State<game_Quiz> createState() => _DesignState();
}

class _DesignState extends State<game_Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://www.mpl.live/blog/wp-content/uploads/2021/09/MPL-quiz-1.png"),
          fit: BoxFit.cover,
        ),
      ),
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(80),
          child: Center(
            child: Text(
              "QUIZE GAME",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
              child: Text(
                'Start',
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 159, 163, 162),
                minimumSize: Size(20, 40),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => page_1())));
              }),
        ),
      ]),
    ));
  }
}
