import 'package:flutter/material.dart';

class item_appbar extends StatefulWidget {
  const item_appbar({Key? key}) : super(key: key);

  @override
  State<item_appbar> createState() => _item_appbarState();
}

class _item_appbarState extends State<item_appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xff4c53a5),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product",
              style: TextStyle(
                  color: Color(0xff4c53a5),
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
