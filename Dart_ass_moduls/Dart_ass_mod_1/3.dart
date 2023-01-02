//. Write a program to make a square and cube of number

import 'dart:io';
main()
{
    int a,square,cube;

    print("Enter a number :");
    a=int.parse(stdin.readLineSync()!);

    square=a*a;
    cube=a*a*a;

    print("The squre is ${square}");
    print("The cube is  ${cube}");
}