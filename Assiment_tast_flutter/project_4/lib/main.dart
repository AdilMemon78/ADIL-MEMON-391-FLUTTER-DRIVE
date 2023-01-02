import 'package:flutter/material.dart';
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.pink,
        title:Text("English Word",
        style: TextStyle(color: Colors.deepPurple,
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Column(

        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.yellow,
                child: Text("A",
                style: TextStyle(fontSize: 30,
                ),
                ),
              
              ),
              SizedBox(width: 5,),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.yellow,
                child: Text("B",
                style: TextStyle(fontSize: 30,
                ),
                ),
              ),
              SizedBox(width: 5,),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.yellow,
                child: Text("C",
                style: TextStyle(fontSize: 30,
                ),
                ),
              ),
              SizedBox(width: 5,),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.yellow,
                child: Text("D",
                style: TextStyle(fontSize: 30,
                ),
                ),
              ),
              

            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.yellow,
                child:Text("E",
                style: TextStyle(fontSize: 30),
                ),

                
              ),
              SizedBox(width: 5,),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.yellow,
                child:Text("f",
                style: TextStyle(fontSize: 30),
                ),

                
              ),
              SizedBox(width: 5,),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.yellow,
                child:Text("G",
                style: TextStyle(fontSize: 30),
                ),
                ),
                SizedBox(width: 5,),
                Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                color: Colors.yellow,
                child:Text("H",
                style: TextStyle(fontSize: 30),
                ),
                ),
                 ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,

                  color: Colors.yellow,
                  child: Text("I",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width:5,),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,

                  color: Colors.yellow,
                  child: Text("J",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,

                  color: Colors.yellow,
                  child: Text("K",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width:5,),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,

                  color: Colors.yellow,
                  child: Text("L",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
              
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("M",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),
                 Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("N",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),
                 Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("O",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),
                 Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("P",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: 
                  Colors.yellow,
                  child: Text("Q",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: 
                  Colors.yellow,
                  child: Text("R",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: 
                  Colors.yellow,
                  child: Text("S",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),

                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: 
                  Colors.yellow,
                  child: Text("T",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("U",
                  style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                   alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("V",
                  style: TextStyle(fontSize: 30),
                  
                  ),
                ),
                 SizedBox(width: 5,),
                Container(
                   alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("W",
                  style: TextStyle(fontSize: 30),
                  
                  ),
                ),
                 SizedBox(width: 5,),
                Container(
                   alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("X",
                  style: TextStyle(fontSize: 30),
                  
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                   alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("Y",style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                   alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                  child: Text("Z",style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            )
         
        ],
      ),
      )
    );
    
  }
}