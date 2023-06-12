import 'package:coffie_app/Screens/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff385858),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "lib/images/1.chats.jpg",
                        ),
                      ),
                      borderRadius: BorderRadius.circular(35)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  "Chose Your Drinks",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => orderscreen(
                                    "lib/images/coffie3.webp",
                                    "Americano",
                                    "Stream hot form",
                                    2.5,
                                  ))),
                        );
                      },
                      child: NewContainer("lib/images/coffie3.webp",
                          "Americano", "Stream hot form", "2.5"),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => orderscreen(
                                    "lib/images/coffie4.webp",
                                    "Lattle",
                                    "Double hot milk",
                                    2,
                                  ))),
                        );
                      },
                      child: NewContainer("lib/images/coffie4.webp", "Lattle",
                          "Double hot milk", "2"),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: NewContainer("lib/images/coffie2.webp", "Americano",
                        "Stream hot form", "3.5"),
                  ),
                  Expanded(
                    child: NewContainer("lib/images/coffie1.webp", "Lattle",
                        "Double hot milk", "1"),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: NewContainer("lib/images/coffie3.webp", "Americano",
                        "Stream hot form", "2.1"),
                  ),
                  Expanded(
                    child: NewContainer("lib/images/coffie4.webp", "Lattle",
                        "Double hot milk", "4"),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: NewContainer("lib/images/coffie3.webp", "Americano",
                        "Stream hot form", "1.9"),
                  ),
                  Expanded(
                    child: NewContainer("lib/images/coffie4.webp", "Lattle",
                        "Double hot milk", "3.5"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewContainer extends StatelessWidget {
  // const NewContainer({
  //   Key? key,
  // }) : super(key: key);

  final imageurl;
  final Title;
  final desc;
  final price;

  NewContainer(this.imageurl, this.Title, this.desc, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Column(
        children: [
          Image(
            height: 140,
            image: AssetImage(
              imageurl,
            ),
            fit: BoxFit.fitHeight,
          ),
          Text(
            Title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            desc,
            style: TextStyle(color: Colors.green, fontSize: 22),
          ),
          Text(
            "\$${price}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
        ],
      ),
    );
  }
}
