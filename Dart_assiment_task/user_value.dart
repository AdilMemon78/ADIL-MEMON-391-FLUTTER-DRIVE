//write a program user the value and sum,sab,mul,div

import 'dart:io';
main()
{
    double a,b;

    print("Enter a num1");
    a=double.parse(stdin.readLineSync()!);

    print("Enter a num2");
    b=double.parse(stdin.readLineSync()!);

    print("\n your sum is ${a+b}");
    print("\n your sab is ${a-b}");
    print("\n your mul is ${a*b}");
    print("\n your div is ${a/b}");
}