// import 'package:flutter/material.dart';
// void main() {
//   runApp(Myapp());

// }
// class Myapp extends StatelessWidget {
//   const Myapp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(

//           title: Text("New project",
//           style: TextStyle(color: Colors.black,
//            fontWeight: FontWeight.bold),
//           ),
//           backgroundColor: Colors.purple,
//           leading: Icon(
//             Icons.access_time,
//             color: Colors.white,
//           ),
//           centerTitle: true,
//           ),
//           body: Container(
//             color: Colors.black,
//             width: double.infinity,
//             height: 50,
//             child: (Text("Instagram",style: TextStyle(fontSize: 20,
//             color: Colors.white,
//             fontStyle: FontStyle.italic,
//             fontWeight: FontWeight.bold),)),

//           ),

//           ),
//     );
//   }
//

import 'package:flutter/material.dart';

void main() {
  runApp(const_Myapp());
}

class const_app extends StatelessWidget {
  const const_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text(
            "New project",
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          leading: Icon(
            Icons.roundabout_right,
            color: Colors.blueGrey,
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
             mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: Colors.amberAccent,
              margin: EdgeInsets.all(15),
              height: 50,
              child: TextButton(
                  child: Text(
                    "Click Here",
                    style: TextStyle(fontSize: 30, color: Colors.amber),
                  ),
                  onPressed: () {
                    print("Welcome to new project...");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
