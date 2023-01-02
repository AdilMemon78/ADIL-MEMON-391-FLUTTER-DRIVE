import 'package:flutter/material.dart';
void main() 
{
  runApp(Myapp());
  
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        backgroundColor: Colors.white,
      body: Container(
        child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.shopping_cart,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.shopping_cart_outlined,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.shopping_cart,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.shopping_cart,
              color: Colors.lightBlue,size: 50,),
              
            ],
          ),
          SizedBox(height: 50,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.message,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.message_outlined,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.message,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.message,
              color: Colors.lightBlue,size: 50,),
            ],
          ), SizedBox(height: 50,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.masks,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.masks_outlined,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.masks,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.masks,
              color: Colors.lightBlue,size: 50,),
              
            ],
          ), SizedBox(height: 50,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.wash,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.wash_outlined,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.wash,
              color: Colors.lightBlue,size: 50,),
              Icon(Icons.wash,
              color: Colors.lightBlue,size: 50,),
              
            ],
          ), SizedBox(height: 50,),

          
        ],
        ),
      ),
      ),
    );
  }
}