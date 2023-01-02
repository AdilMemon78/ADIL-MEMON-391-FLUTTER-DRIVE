//write a program month convert year

import 'dart:io';

main()
{
  double month;

    print("Enter a month :");
    month=double.parse(stdin.readLineSync()!);
    print("Your year is ${month/12}");

}
