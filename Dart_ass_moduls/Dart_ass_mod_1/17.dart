// Write Program use switch statement. Display Monday to Sunday

import 'dart:io';
main()
{
    var day;

    print("Enter a day :");
    day=int.parse(stdin.readLineSync()!);

    switch(day)
    {

      case 1:
        {
            print("Monday");
        }
        break;

      case 2:
        {
            print("thusday");
        }
        break;

        case 3:
        {
            print("Wensday");
        }
        break;

        case 4:
        {
            print("Thusday");
        }
        break;

        case 5:
        {
            print("Friday");
        }
        break;

        case 6:
        {
            print("Satarday");
        }
        break;

        case 7:
        {
            print("Sunday");
        }
        break;
        default:
        
        {
            print("Invalid day");
        }
    }
    
}