//find out even or odd number

import 'dart:io';
main()
{
    var number;

    print("Enter a number :");
    number=int.parse(stdin.readLineSync()!);

    if(number%2==0)
    {
        print('even number');

    }
    else{
        print('odd number');
    }
    

}