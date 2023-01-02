import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool color_status=true;
  Color?colorname;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Statefull Widgets"),
          ),
          body: Container(
            height:double.maxFinite,
            width: double.maxFinite,
            color: colorname,
            child: TextButton(child:Text("Click here"),
            onPressed: (){
                changecolour();
            },
             ),
          ),
          ),
    );
  }
  void changecolour()
  {
    if(color_status)
    {
      setState(() {
        colorname=Colors.yellow;
        color_status=false;
      }
      );
    }
    else
    {
       setState(() {
        colorname=Colors.red;
        color_status=true;
    });
  }
  }
}