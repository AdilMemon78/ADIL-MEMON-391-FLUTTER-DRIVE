import 'package:flutter/material.dart';
import 'package:qwiz_app/change_screen.dart/Screen_change.dart';
import 'package:qwiz_app/data.dart/Question_list.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  Color maincolor = Color(0xFF252c4a);
  Color secoundcolor = Color(0xFF117eeb);

  PageController? _controller = PageController(initialPage: 0);
  bool ispressed = false;
  Color isAnswer = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller!,
            onPageChanged: (Page) {
              setState(() {
                ispressed = false;
              });
            },
            itemCount: question.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/${question.length}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 28.0),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    question[index].Question!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  for (int i = 0; i < question[index].answer!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 18.0),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: ispressed
                            ? question[index].answer!.entries.toList()[i].value
                                ? isAnswer
                                : isWrong
                            : secoundcolor,
                        padding: EdgeInsets.symmetric(vertical: 18.0),
                        onPressed: ispressed
                            ? () {}
                            : () {
                                setState(() {
                                  ispressed = true;
                                });
                                if (question[index]
                                    .answer!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  score += 10;
                                  print(score);
                                }
                              },
                        child: Text(
                          question[index].answer!.keys.toList()[i],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                          onPressed: ispressed
                              ? index + 1 == question.length
                                  ? () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  Screen_change(score))));
                                    }
                                  : () {
                                      _controller!.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.linear);
                                    }
                              : null,
                          style: OutlinedButton.styleFrom(
                              shape: StadiumBorder(),
                              side:
                                  BorderSide(color: Colors.orange, width: 1.0)),
                          child: Text(
                            index + 1 == question.length
                                ? "see result"
                                : "next Question",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
