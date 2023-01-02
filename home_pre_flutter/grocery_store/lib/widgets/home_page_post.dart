import 'package:flutter/material.dart';
import 'package:grocery_store/pages/item_page.dart';

class Home_page_post extends StatelessWidget {
  const Home_page_post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: Color.fromARGB(255, 181, 209, 159), boxShadow: [
        BoxShadow(
            color: Color.fromARGB(255, 218, 182, 182).withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5)
      ]),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Flah sale",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            children: [
              for (int i = 1; i < 6; i++)
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => itempage())));
                        },
                        child: Image.asset(
                          "assets/images/04.jpg",
                          fit: BoxFit.cover,
                          height: 130,
                          width: 120,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Item name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$50",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFB608)),
                                  ),
                                  SizedBox(
                                    height: 0,
                                  ),
                                  Text(
                                    "/ 1kg",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Spacer(),
                                  Icon(Icons.favorite_border)
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
