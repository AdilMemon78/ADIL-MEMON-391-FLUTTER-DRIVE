//accept status value in user in true or faluse display true or faluse apporive value must use(bool_data type)

import 'dart:io';
main()
{
//     String? number;

//     print("your status on/off");
    
//     print('1)on');
//     print('2)off');

//     number=stdin.readLineSync();
    

//     bool status;

//     if(number=='1')
//     {
//         print('your status is true');
//     }
// else
// {
//         print('your status is false');
//     }
     

    bool status=true;
    String? name;

    print("Enter 0n/off");
    name=stdin.readLineSync();

    if(name=='on'||name=='ON')
    {
    
        print(status=true);

    }
    else
    {
        print(status=false);
    }

}