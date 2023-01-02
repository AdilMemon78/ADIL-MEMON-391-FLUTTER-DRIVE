import 'package:flutter/material.dart';
import 'package:shop_card/shoping_page.dart';
import 'package:shop_card/shoping_page_2.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({Key? key}) : super(key: key);

  @override
  State<tab_bar> createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.mobile_friendly),
                  text: "Mobiles menu",
                ),
                Tab(
                  icon: Icon(Icons.laptop),
                  text: "Laptops menu",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [shoping_page(), shoping_page2()],
          ),
        ),
      ),
    );
  }
}
