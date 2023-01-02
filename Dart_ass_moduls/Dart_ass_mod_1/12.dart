// Write a Program to check the given number is prime or not prime.

import 'dart:io';
main()
{
    int num;
    print("Enter a number :");
    num=int.parse(stdin.readLineSync()!);

    if(num==0)
    {
        print("prime number");
    }
    else
    {
        print("Not prime number");
    }

    
}