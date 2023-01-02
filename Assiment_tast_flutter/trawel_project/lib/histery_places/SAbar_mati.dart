import 'package:flutter/material.dart';

class sabar_mari extends StatefulWidget {
  const sabar_mari({Key? key}) : super(key: key);

  @override
  State<sabar_mari> createState() => _sabar_mariState();
}

class _sabar_mariState extends State<sabar_mari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/image/sabarmati_2.jpg",
            height: 200,
            width: 200,
          ),
        ),
        Expanded(
          child: Container(
            child: Text(
              "The Atal Bridge, which is unique in its design - both technically and visually, will also augment the status of the Riverfront as well as of the city.",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            "Prime Minister Narendra Modi is set to inaugurate another attraction added near the Sabarmati Riverfront in Ahmedabad, the pedestrian-only Atal Bridge, named after former Prime Minister Atal Bihari Vajpayee. The foot overbridge will connect the flower garden on the western-end and the upcoming arts and culture centre on the eastern-end of the riverfront.",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Container(child: Image.asset("assets/image/sabarmati_3.jpg")),
        ),
        Container(
          margin: EdgeInsets.only(left: 140),
          child: Text(
            "Master Plan",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ),
        Container(
          child: Text(
            "The Riverfront project creates a public edge along the river on the eastern and western banks. By channeling the river to a constant width of 263m, riverbed land of 204.91 hetares has been reclaimed. The public riverfront extends up to a length of 11.25 kilometers within the city on either banks.",
            style: TextStyle(fontSize: 30),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text(
            "The main considerations in allocating land uses for the reclaimed portions have been: existing land uses along the river; extent, location and configuration of reclaimed land available; potential for development; the structural road network and form of the city; bridges proposed in the Ahmedabad Development Plan; and the possibility of providing adequate infrastructure in the new development.",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 100),
          child: Text(
            "General Facilities",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ),
        Container(
          child: Image.asset("assets/image/sabarmati_4.jpg"),
        ),
        Container(
          child: Text(
            "To provide new and improved amenities for the city and to include sections with particular needs, provision of markets and vending areas to include street vendors , laundry facilities for the washing community, trade and fair facilities for the business community have been made in the project. The project replaces a largely private riverfront with an expansive public realm with a network of parks, waterside promenades, markets, cultural institutions, recreational facilities and commercial developments for the city’s five million residents.",
            style: TextStyle(fontSize: 30),
          ),
        )
      ]),
    );
  }
}
