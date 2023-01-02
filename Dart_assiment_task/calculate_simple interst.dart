//calculate simple interst

import 'dart:io';

main()
{
        //const and double use
     final persentage=5;
    double simple_interst,amount,month;

    print("Enter a amount :");
    amount=double.parse(stdin.readLineSync()!);
    
    print("Enter a month :");
   month=double.parse(stdin.readLineSync()!);

    print("\n simple interse is ${simple_interst=(amount*persentage*month)/100}");

   
}