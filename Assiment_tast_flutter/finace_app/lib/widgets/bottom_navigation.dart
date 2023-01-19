import 'package:finace_app/screens/add.dart';
import 'package:finace_app/screens/login_page.dart';
import 'package:finace_app/screens/statics.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_colour = 0;
  List screen = [homepage(), statices(), homepage(), statices()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index_colour],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Add_screen())));
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff368983),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_colour = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_colour == 0 ? Color(0xff368983) : Colors.purple,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_colour = 1;
                  });
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color: index_colour == 1 ? Color(0xff368983) : Colors.purple,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_colour = 2;
                  });
                },
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 30,
                  color: index_colour == 2 ? Color(0xff368983) : Colors.purple,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_colour = 3;
                  });
                },
                child: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: index_colour == 3 ? Color(0xff368983) : Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
