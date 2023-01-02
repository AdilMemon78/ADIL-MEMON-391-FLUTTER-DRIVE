//7. Write a program to convert temperature from degree centigrade to Fahrenheit.
import 'dart:io';
main()
{
    double cels,Fahrenheit=0;

    print("Enter temprecher and centrigrad :");
    cels=double.parse(stdin.readLineSync()!);

    Fahrenheit = (cels * 9.0/5.0) + 32.0;
    print("The faranhit is ${Fahrenheit}");
}