//Write a Program to check the given year is leap year or not.

import 'dart:io';
main()
{
    int year;
    print("Enter a year :");
    year=int.parse(stdin.readLineSync()!);

    if(year%4==0)
    {
        print("Leap year");
    }
    else{
        print("Not leap year");
    }
}