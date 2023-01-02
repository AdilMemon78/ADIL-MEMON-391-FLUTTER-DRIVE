//4. Write a program to find the Area of Circle 

import 'dart:io';
main()
{
    double radies;
    double area;
    //final pi=3.14;
    double pi=3.14;

    print("Enter radies of circle :");
    radies=double.parse(stdin.readLineSync()!);

    area=pi*radies*radies;

    print("Area of circle is ${area}");
}