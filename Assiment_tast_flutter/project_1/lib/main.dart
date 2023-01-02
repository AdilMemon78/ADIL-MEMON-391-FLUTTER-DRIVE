import 'package:flutter/material.dart';

main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid List"),
        ),
        
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                 width: 50,
                  child: Column(
                    children: [
                       Text(
                        "Car",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.directions_car,
                        color: Colors.grey,
                        size: 50,
                      ),
                     
                    ],
                  ),
                ),
                 SizedBox(
                   width: 18,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                 // width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.pedal_bike_sharp,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        "Bicycle",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 18),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                 // width: 100,
                  child: Column(
                    children: [
                       Text(
                        "Boat",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.directions_boat,
                        color: Colors.grey,
                        size: 50,
                      ),
                     
                    ],
                  ),
                ),
                SizedBox(
                  height: 18
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                 // width: 100,
                  child: Column(
                    children: [
                       
                      Icon(
                        Icons.directions_bus,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        "Bus",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                     
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Text(
                        "Triain",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.train,
                        color: Colors.grey,
                        size: 50,
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Container(
                 
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_walk,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        "Walk",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Text(
                        "Car",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.directions_car,
                        color: Colors.grey,
                        size: 50,
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                 
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        "Bicycle",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Text(
                        "Boat",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.ballot_rounded,
                        color: Colors.grey,
                        size: 50,
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.bus_alert,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        "Bus",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Text(
                        "Train",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.train,
                        color: Colors.grey,
                        size: 50,
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_car,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        "Car",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Text(
                        "Bicycle",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.pedal_bike_sharp,
                        color: Colors.grey,
                        size: 50,
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.directions_boat,
                        color: Colors.grey,
                        size: 50,
                      ),
                      Text(
                        "Boat",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  //width: 100,
                  child: Column(
                    children: [
                      Text(
                        "Bus",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Icon(
                        Icons.bus_alert_sharp,
                        color: Colors.grey,
                        size: 50,
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}