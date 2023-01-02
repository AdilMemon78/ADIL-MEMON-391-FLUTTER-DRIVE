import 'package:flutter/material.dart';
void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text("Silver Gried types",
            style: TextStyle(fontSize: 20,color: Colors.white
            ),
            
            ),
           // centerTitle: true,
            leading: Icon(Icons.arrow_back),
           backgroundColor: Colors.lightBlue, 
           toolbarHeight: 100,
        ),
      

        body:Container(
          child: Column(//mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SliverGrid.extent",
              style: TextStyle(fontSize: 20),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.green,
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.lightBlue,
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.green,
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.lightBlue,
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
              Text("SliverGrid.count",
                  style: TextStyle(fontSize: 20),
                  ),
              SizedBox(height: 15,),
              Row(
                children: [
                  
                  Container(
                    color: Colors.red,
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.lightBlue,
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.green,
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.lightBlue,
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.all(8),
                  ),
                  Container(
                    color: Colors.lightBlue,
                    height: 60,
                    width: 80,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              )
            ],
          ),
         ),
      ),
    );
  }
}