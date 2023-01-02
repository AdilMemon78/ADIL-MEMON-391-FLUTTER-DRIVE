import 'package:flutter/material.dart';

class photo extends StatefulWidget {
  const photo({Key? key}) : super(key: key);

  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_xdKg2OssMWPE-SqkgOduIZDcEykLm6N6_hdmsJfl&s",
                  height: 150,
                  width: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/pizza-pepperoni-cheese-salami-vegetables-58914487.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/pizza-rustic-italian-mozzarella-cheese-basil-leaves-35669930.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
            ],
          ),
          Row(
            //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/08/13/14/pizza-712667__340.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523__340.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2016/11/29/13/02/cheese-1869708__340.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
            ],
          ),
          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_xdKg2OssMWPE-SqkgOduIZDcEykLm6N6_hdmsJfl&s",
                  height: 150,
                  width: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/pizza-pepperoni-cheese-salami-vegetables-58914487.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/pizza-rustic-italian-mozzarella-cheese-basil-leaves-35669930.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2020/05/17/04/22/pizza-5179939__340.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://miro.medium.com/max/1400/0*oTfm1pTXLxitHHFy.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(
                  "https://st.depositphotos.com/1900347/4146/i/450/depositphotos_41466555-stock-photo-image-of-slice-of-pizza.jpg",
                  height: 150,
                  width: 110,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
