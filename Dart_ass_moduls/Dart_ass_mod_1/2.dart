//2. Write a program to make addition, Subtraction, Multiplication and Division of Two Numbers.

import 'dart:io';
main()
{
    int num1,num2;

    print("Enter a number 1. :");
    num1=int.parse(stdin.readLineSync()!);

    print("Enter a number 2. :");
    num2=int.parse(stdin.readLineSync()!);

    print("The sum is ${num1+num2}");
    print("The sab is ${num1-num2}");
    print("The mul is ${num1*num2}");
    print("The div is ${num1/num2}");
    
}