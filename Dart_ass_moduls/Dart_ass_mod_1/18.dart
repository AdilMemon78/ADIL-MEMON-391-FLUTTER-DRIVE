//Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be 
//Menu Driven)
import 'dart:io';
main()
{
    int a,b,ch;
    int sum,sab,mul,div;

    print("Enter a number 1:");
    a=int.parse(stdin.readLineSync()!);


    print("Enter a number 2:");
    b=int.parse(stdin.readLineSync()!);

    print("Enter your choice ?:");
    ch=int.parse(stdin.readLineSync()!);

    switch(ch)
    {
        case 'sum=a+b':
        print("The sum is ${a+b}");
        break;

        case 'sab=a-b':
        print("The sum is ${a-b}");
        break;

        case 'mul=a*b':
        print("The sum is ${a*b}");
        break;

        case 'div=a/b':
        print("The sum is ${a/b}");
        break;

        default:
        {
            print("Envalid number ");
        }
    }
    
}