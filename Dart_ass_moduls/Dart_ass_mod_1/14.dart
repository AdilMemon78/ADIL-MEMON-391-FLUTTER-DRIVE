// Write a program to find the Max number from the given three number using Ternary Operator

import 'dart:io';
main()
{
    int a,b,c,max=0;

    print("Enter a number 1:");
    a=int.parse(stdin.readLineSync()!);

    print("Enter a number 2:");
    b=int.parse(stdin.readLineSync()!);

    print("Enter a number 3:");
    c=int.parse(stdin.readLineSync()!);

    max=((a>b && a>c)?(a):(b>c)?(b):(c));

    print("Max number is ${max}");
}