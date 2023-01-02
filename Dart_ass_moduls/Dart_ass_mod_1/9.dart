// Write a Program to show swap of two No's without using third variable.

import 'dart:io';
main()
{
    int a,b;
    print("Enter a number :");
    a=int.parse(stdin.readLineSync()!);

    print("Enter b number :");
    b=int.parse(stdin.readLineSync()!);

    a=a+b;
    b=a-b;
    a=a-b;

    print("swap the ${a=b}");
    
}