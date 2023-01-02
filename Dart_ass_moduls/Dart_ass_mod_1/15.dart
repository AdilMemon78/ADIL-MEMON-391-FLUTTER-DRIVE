//Write a program to find the Max number from the given three number using Nested If 
import 'dart:io';
main()
{
    int num1,num2,num3;

    print("Enter a number 1 :");
    num1=int.parse(stdin.readLineSync()!);

    
    print("Enter a number 2 :");
    num2=int.parse(stdin.readLineSync()!);

    
    print("Enter a number 3 :");
    num3=int.parse(stdin.readLineSync()!);

    if(num1 > num2)
    {
        if(num1 > num3)
        {
            print("number 1 is Biggest ${num1}");
        }

    }
    if(num2 > num1)
    {
        if(num2 > num3)
        {
            print("number 2 is Biggest ${num2}");
        }
    }
    if(num3 > num1)
    {
        if(num3 > num2)
        {
            print("number 3 is Biggest ${num3}");
        }
    }
}