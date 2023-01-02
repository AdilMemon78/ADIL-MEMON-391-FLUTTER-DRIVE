import 'package:flutter/material.dart';
import 'package:trawel_project/Hayat_hotel_places/2_hayat_hotel.dart';
import 'package:trawel_project/Hayat_hotel_places/4_hayat_3%20-%20Copy.dart';

class HAyat_2 extends StatelessWidget {
  const HAyat_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Hayat())));
                  }),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "           Hotel",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HAyat_3())));
                },
                child: Container(
                    child: Image.network(
                  "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2015/02/17/1555/Hyatt-Regency-Ahmedabad-P007-Facade.jpg/Hyatt-Regency-Ahmedabad-P007-Facade.16x9.jpg?imwidth=1280",
                  height: 100,
                )),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HAyat_3())));
                },
                child: Container(
                    child: Image.network(
                  "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2019/10/28/1741/Hyatt-Regency-Ahmedabad-P082-Lobby-Art.jpg/Hyatt-Regency-Ahmedabad-P082-Lobby-Art.16x9.jpg?imwidth=1280",
                  height: 100,
                )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  child: Image.network(
                "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2016/01/06/1252/Hyatt-Regency-Ahmedabad-P023-Hotel-Exterior.jpg/Hyatt-Regency-Ahmedabad-P023-Hotel-Exterior.16x9.jpg?imwidth=1280",
                height: 100,
              )),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Image.network(
                "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2015/02/17/1452/Hyatt-Regency-Ahmedabad-P009-Juniper-Lounge.jpg/Hyatt-Regency-Ahmedabad-P009-Juniper-Lounge.16x9.jpg?imwidth=1280",
                height: 100,
              )),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Roms",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HAyat_3())));
                },
                child: Container(
                    child: Image.network(
                  "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2015/02/17/1452/Hyatt-Regency-Ahmedabad-P013-Twin-Bed-Room.jpg/Hyatt-Regency-Ahmedabad-P013-Twin-Bed-Room.4x3.jpg?imwidth=1280",
                  height: 100,
                )),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HAyat_3())));
                },
                child: Container(
                    child: Image.network(
                  "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2015/02/17/1452/Hyatt-Regency-Ahmedabad-P011-King-Bed-Room.jpg/Hyatt-Regency-Ahmedabad-P011-King-Bed-Room.16x9.jpg?imwidth=1280",
                  height: 100,
                )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Dining",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  child: Image.network(
                "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2016/01/06/1253/Hyatt-Regency-Ahmedabad-P036-Chai-Shop-Horizontal.jpg/Hyatt-Regency-Ahmedabad-P036-Chai-Shop-Horizontal.16x9.jpg?imwidth=1280",
                height: 100,
              )),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Image.network(
                "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2016/01/06/1253/Hyatt-Regency-Ahmedabad-P036-Chai-Shop-Horizontal.jpg/Hyatt-Regency-Ahmedabad-P036-Chai-Shop-Horizontal.16x9.jpg?imwidth=1280",
                height: 100,
              )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  child: Image.network(
                "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2019/10/28/1741/Hyatt-Regency-Ahmedabad-P079-China-House.jpg/Hyatt-Regency-Ahmedabad-P079-China-House.16x9.jpg?imwidth=1280",
                height: 100,
              )),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Image.network(
                "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2019/10/28/1741/Hyatt-Regency-Ahmedabad-P080-Healthy-Breakfast-in-Room.jpg/Hyatt-Regency-Ahmedabad-P080-Healthy-Breakfast-in-Room.16x9.jpg?imwidth=1280",
                height: 100,
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Fitness",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Image.network(
                "https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2016/02/01/1437/Hyatt-Regency-Ahmedabad-P049-Fitness-Center.jpg/Hyatt-Regency-Ahmedabad-P049-Fitness-Center.16x9.jpg?imwidth=1280",
                height: 150,
              )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => HAyat_3())));
                  }),
                  child: Text("pages"))
            ],
          )
        ],
      ),
    );
  }
}
