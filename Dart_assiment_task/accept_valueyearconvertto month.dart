//write aprogram year convret to month

import 'dart:io';

main()


{
    double year;

    print("Enter a year :");
    year=double.parse(stdin.readLineSync()!);

    print("youur month is ${year*12}");
}