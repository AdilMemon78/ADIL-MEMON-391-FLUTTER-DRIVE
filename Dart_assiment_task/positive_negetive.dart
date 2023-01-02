//accept number and cheak number positive or negetive

import 'dart:io';
main()
{
    var number;

    print("Enter a number :");
    number=int.parse(stdin.readLineSync()!);

    if(number>=0)
    {
        print('positive number');

    }
    else{
        print('negetive number');
    }

    
}