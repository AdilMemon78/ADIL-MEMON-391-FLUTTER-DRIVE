// Write a Program to check the given number is Positive, Negative. 

import 'dart:io';
main()
{
    var num;
    print("Enter a number :");
    num=int.parse(stdin.readLineSync()!);

    if(num>=0)
    {
        print("positive");
    }
    else
    {
        print("negative");
    }
}