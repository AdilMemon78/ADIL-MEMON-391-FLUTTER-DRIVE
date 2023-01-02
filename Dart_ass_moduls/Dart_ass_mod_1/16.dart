//Write a program user enter the 5 subjects mark. You have to make a total and find the percentage. 
// percentage > 75 you have to print “Distinction” percentage > 60 and percentage <= 75 you have to 
// print “First class” percentage >50 and percentage <= 60 you have to print “Second class” percentage > 
// 35 and percentage <= 50 you have to print “Pass class” Otherwise print "Fail".

import 'dart:io';
main()
{
    int marks;

    print("please,Enter your marks :");
    marks=int.parse(stdin.readLineSync()!);

    if(marks > 70)
    {
        print("A grade");
    }
    else if(marks > 60 && marks <70)
    {
        print("B grade");
    }
    else if(marks > 50 && marks < 60)
    {
        print("C grade");
    }
    else if(marks > 40 && marks < 50)
    {
        print("D grade");
    }

    else
    {
        print("Fail");
    }
    print("Exits");
     
}