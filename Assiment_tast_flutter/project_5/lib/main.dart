import 'package:flutter/material.dart';
 void main(){
  runApp(Myapp());
 }
 class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: Colors.redAccent,
                margin: EdgeInsets.all(16),
                height: 80,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                  color: Colors.yellow,
                  height: 180,width: 200,
                  margin: EdgeInsets.all(16),
                ),
                Container(
                  color: Colors.pink,
                  height: 180,width: 200,
                  margin: EdgeInsets.all(16),
                ),
                Container(
                  color: Colors.blue,
                  height: 180,width: 200,
                  margin: EdgeInsets.all(16),
                ),
                
                    ],
                  ),
                ),
                
              
                ],
              )
          
          ), 
          ),
      );
  }
}