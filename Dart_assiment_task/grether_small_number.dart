//accept two nummber and cheak greastest and smallestbnumber

import 'dart:io';

main()
{
     var num1;
      var num2;

    // print("Enter a number :");
    // num1=int.parse(stdin.readLineSync()!);

    // if(num1>40)
    // {
    //     print('greatest number');
    // }
    // else
    // {
    //     print('smallest number');

    // }

    // print("ENter a number :");
    // num2=int.parse(stdin.readLineSync()!);

    // if(num2>50)
    // {
    //     print(' greatest number ');
    // }
    // else{
    //     print(' smallest number');
    // }

 
    print("Enter a first number :");
    num1=int.parse(stdin.readLineSync()!);

    print("Enter a secound number :");
    num2=int.parse(stdin.readLineSync()!);

    if(num1>num2)
    {
        print('first number greatest number');

    }
    else
    {
        print(' first number is smallest number');
    }

}

