import 'package:flutter/material.dart';
import 'package:grocery_store/widgets/home_bottom.dart';
import 'package:grocery_store/widgets/home_page_post.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 6; i++)
                  Image.asset(
                    "assets/images/images_1.jpg",
                    height: 250,
                    //width: double.infinity,
                    fit: BoxFit.cover,
                  )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5)
            ]),
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 9; i++)
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 181, 209, 159),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                    child: Image.asset(
                      "assets/images/03.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
              ],
            ),
          ),
          Home_page_post(),
        ],
      ),
      bottomNavigationBar: Homebottom(),
    );
  }
}
