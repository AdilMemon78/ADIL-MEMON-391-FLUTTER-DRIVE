//6. Write a program to find the simple Interest.

import 'dart:io';
main()
{
    final persentage=4;
    double amount;
    double month;
    double simple_interst;

    print("Enter a amount :");
    amount=double.parse(stdin.readLineSync()!);

    print("Enter a month :");
    month=double.parse(stdin.readLineSync()!);

    print("\n your simple interse is ${simple_interst=(amount*persentage*month)/100}");
    
}