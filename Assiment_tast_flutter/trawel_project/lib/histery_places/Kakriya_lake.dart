import 'package:flutter/material.dart';

class Kakriya_lake extends StatelessWidget {
  const Kakriya_lake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/image/kakriya_2.jpg",
            height: 100,
            width: 300,
          ),
        ),
        Expanded(
          child: Container(
            child: Text(
              "Kamla Nehru Zoological Park was established by Rueben David in 1951 CE spread over 21 acres. It was rated the best zoo in Asia in 1974. They are 450 mammals, 2,000 birds, 140 reptiles in a 31 acre zoo. It is a treasure of wild animals like tigers, lions, python, anaconda, snakes, elephant, albinos (white), like the rhesus monkey and peacock, spotted deer, white blackbuck, chinkara, elephants, emu, jungle babbler, bush-quail and common palm civet. Kankaria Zoo has also records in breeding of rare species in Zoo like pythons, crocodiles, bearcats and wild asses. Reuben David was awarded Padma Shri in 1974 for it.",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Container(
          child: Image.asset("assets/image/kakriya_3jpg.png"),
        ),
        // Container(
        //   margin: EdgeInsets.only(left: 150),
        //   child: Text(
        //     "Location",
        //     style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.purple),
        //   ),
        // ),
        // SizedBox(
        //   height: 20,
        // ),
        Expanded(
          child: Container(
              child: Image.asset(
            "assets/image/kakriya_4.jpg",
            height: 200,
            width: 200,
          )),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            "The historical Kankaria Lake having a periphery of about 2.5 Km has been the symbol of Ahmadabad’s identity since almost 500 years. The historic lake around an island garden called Naginawadi has been an evergreen outing place for the people of Ahmedabad. Along with the adjoining Zoo, Balvatika, Aquarium and surrounding hill gardens, it offered a complete entertainment centre. Moreover 12.5 lacs visitors and children took joyride of mini train – ‘Atal Express’. Festivals, small gatherings, educational tours, jogging, informal meetings, picnics etc. have become new face of Kankaria to attract younger generation in a meaningful way.",
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 130),
          child: Text(
            "How to reach",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          child: Image.network(
              "https://cdn.britannica.com/61/146261-004-F79F4557/Air-India-A319.jpg"),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          margin: EdgeInsets.only(left: 50),
          child: Text(
            "By AIR",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            "Sardar Vallabhbhai Patel airport at Ahmedabad is an international airport with direct flights to USA, UK, Singapore, Dubai and other international hubs. Numerous domestic flights are also operational from here.",
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 50),
          child: Text(
            "By Road",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            "Any Options.",
            style: TextStyle(fontSize: 25),
          ),
        )
      ]),
    );
  }
}
