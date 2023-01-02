import 'package:flutter/material.dart';
import 'package:pp11/Pages/login_page.dart';
import 'package:pp11/home_page.dart';
void main()
{
  runApp(Adilapp());
}
class Adilapp extends StatelessWidget {
  const Adilapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness:Brightness.dark
      ),
      
      /* routes: {
         "/":(context) => homepage(),
         "/":(context) => Loginpage(),
       },*/

    );
  }
}