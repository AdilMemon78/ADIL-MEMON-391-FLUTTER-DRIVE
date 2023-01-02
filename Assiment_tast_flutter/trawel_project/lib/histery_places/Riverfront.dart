import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class river_front extends StatelessWidget {
  const river_front({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset("assets/image/10.png"),
        ),
        ReadMoreText(
          "The Sidi Saiyyed Mosque, popularly known as Sidi Saiyyid ni Jali locally, built in 1572-73 AD (Hijri year 980), is one of the most famous mosques of Ahmedabad, a city in the state of Gujarat, India. As attested by the marble tablet fixed on the wall of the mosque, it was built by Shaikh Sa'id Al-Habshi Sultani. Sidi Sa'id was originally a slave of Rumi Khan, a Turkish general who had come to Gujarat from Yemen, bringing along with him his Habshi slaves. Sidi Sa'id later served Sultan Mahmud III, and upon his death, joined the Abyssinian general Jhujhar Khan. Upon Sidi Sa'id's retirement from military service, Jhujhar Khan granted him a jagir. Sidi Sa id over his career became a prominent nobleman: he collected a library, owned over a hundred slaves, performed the Hajj pilgramage, and instituted a langar (public kitchen). Previously at the site there was a smaller brick mosque, which was rebuilt by Sidi Sa id, and he was buried near the mosque when he died in 1576.[1][2] The mosque was built in the last year of the existence of Gujarat Sultanate'",
          style: TextStyle(fontSize: 30),
          trimLines: 5,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          //trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        // Expanded(
        //   child: Container(
        //     child: Text(
        //       "",
        //       style: TextStyle(fontSize: 25),
        //     ),
        //   ),
        // ),
        Container(
          child: Image.asset("assets/image/0.11.webp"),
        ),
        Expanded(
          child: Container(
            child: Text(
              "The Prime Minister, Shri Narendra Modi has paid tributes to Sri Guru Teg Bahadur Ji on his martyrdom day.",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Text(
              "I pay homage to Sri Guru Teg Bahadur Ji on the day of his martyrdom. He is universally admired for his courage and unwavering commitment to his principles as well as ideals. He refused to bow to tyranny and injustice. His teachings continue to motivate us.",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Container(
          child: Image.asset("assets/image/12.0.jpg"),
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
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            child: Text(
              "Bhadra Rd, Opposite Electricity House, Old City, Gheekanta, Lal Darwaja, Ahmedabad, Gujarat 380001.",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ]),
    );
  }
}
