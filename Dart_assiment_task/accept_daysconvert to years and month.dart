//Accept days and convert to years and month

import 'dart:io';

main()
{
    double days;

    print("Enter a days :");
    days=double.parse(stdin.readLineSync()!);

    print("your month is ${days/30}");
    print("your year  is ${days/365}");
}