import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Jama_masjid extends StatelessWidget {
  const Jama_masjid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/image/jama_2.jpg",
            height: 100,
            width: 300,
          ),
        ),
        Expanded(
          child: Container(
            child: Text(
              "",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        ReadMoreText(
          "Jama Masjid (literally Friday Mosque), also known as Jumah Mosque or Jami' Masjid, is a mosque in Ahmedabad, and was built in 1424 during the reign of Ahmad Shah I. The inscription on the central mihrab commemorates the inauguration of the mosque on the 1st Safar A.H. 827 or January 4, 1424 A.D. by Sultan Ahmad Shah I.[1] The mosque lies in the old walled city, and it is situated outside Bhadra Fort area.[2] The old walled city is divided into separate quarters or pols, and the Jami' Masjid is found on the Gandhi Road. Along the south side of the road, the mosque is a short distance beyond the Teen Darwaza or Tripolia Gate.",
          style: TextStyle(fontSize: 30),
          trimLines: 5,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          //trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Container(
          child: Image.asset("assets/image/jama_3.jpg"),
        ),
        Container(
          margin: EdgeInsets.only(left: 150),
          child: Text(
            "Location",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            child: Text(
              "The Jama Masjid of Ahmedabad was probably the largest mosque in the Indian subcontinent built in this period.[4][3] It lies in the center of the old walled city.[2] The northern wall of the mosque lies along a processional way. Designed as part of a major plan desired by Sultan Ahmed Shah I, the mosque is located north of the processional axis that runs from the Maidan-i Shah at the door with three arches, Teen Darwaza.[2] One enters the mosque from the north using a staircase. To the east of the mosque is the Badshah-ka-Hazira, also known as the Tomb of Ahmad Shah. This is the tomb of Ahmad Shah I, his son, and grandson. The tomb used similar architectural styles as the Jama Mosque even though it was started after the completion of the mosque.[1][4] Some similar architectural features include the use of multiple domes, enclosed columned courts, and pierced screen walls.[1] Although the tomb did not use any novel architectural features, it was the first of its kind in Ahmedabad.[1] Nearby are the graves of the queens and the other wives of the Sultan Ahmad Shah I, which is called the Rani no Hajiro or Hazira. This tomb used a similar architectural style to the Tomb of Ahmad Shah.",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 150),
          child: Text(
            "Address",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ),
        Container(
          child: Text(
            "2HFP+HR5, Manek Chowk, Gandhi Rd, Danapidth, Khadia, Ahmedabad, Gujarat 380001.",
            style: TextStyle(fontSize: 30),
          ),
        )
      ]),
    );
  }
}
