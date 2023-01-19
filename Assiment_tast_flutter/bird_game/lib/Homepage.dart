import 'dart:async';

import 'package:bird_game/barries.dart';
import 'package:bird_game/bird.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static double birdyaxis = -1;
  double time = 0;
  double height = 0;
  double initialheight = birdyaxis;
  bool gamehasstart = false;
  static double barriesone = 1;
  double barriestwo = barriesone + 1.5;

  void jump() {
    setState(() {
      time = 0;
      initialheight = birdyaxis;
    });
  }

  void startgame() {
    gamehasstart = true;
    Timer.periodic(Duration(milliseconds: 60), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 2.8 * time;
      setState(() {
        birdyaxis = initialheight - height;
      });
      setState(() {
        if (barriesone < -2) {
          barriesone += 3.5;
        } else {
          barriesone -= 0.05;
        }
      });
      setState(() {
        if (barriestwo < -2) {
          barriestwo += 3.5;
        } else {
          barriestwo -= 0.05;
        }
      });
      if (birdyaxis > 1) {
        timer.cancel();
        gamehasstart = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (gamehasstart) {
          jump();
        } else {
          startgame();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            //Expanded is a half screen
            Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      alignment: Alignment(0, birdyaxis),
                      duration: Duration(milliseconds: 0),
                      color: Colors.blue,
                      child: Mybird(),
                    ),
                    Container(
                        alignment: Alignment(0, -0.3),
                        child: gamehasstart
                            ? Text("")
                            : Text(
                                "tap to play",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                    AnimatedContainer(
                      alignment: Alignment(barriesone, 1.1),
                      duration: Duration(milliseconds: 0),
                      child: barries(
                        size: 200.0,
                      ),
                    ),
                    // AnimatedContainer(
                    //   alignment: Alignment(barriesone, -1.1),
                    //   duration: Duration(milliseconds: 0),
                    //   child: barries(
                    //     size: 200.0,
                    //   ),
                    // ),
                    AnimatedContainer(
                      alignment: Alignment(barriestwo, 1.1),
                      duration: Duration(milliseconds: 0),
                      child: barries(
                        size: 150.0,
                      ),
                    ),
                    AnimatedContainer(
                      alignment: Alignment(barriestwo, -1.1),
                      duration: Duration(milliseconds: 0),
                      child: barries(
                        size: 250.0,
                      ),
                    ),
                  ],
                )),
            Container(
              height: 15,
              color: Colors.green,
            ),
            Expanded(
                child: Container(
              color: Colors.brown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Score",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        "0",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Best",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        "10",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
