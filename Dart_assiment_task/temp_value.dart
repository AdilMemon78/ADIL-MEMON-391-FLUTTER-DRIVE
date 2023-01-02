//accept temp value from user
    
    //if temp goes more then 100 it become air
    //if temp beetween 0-100 it will be water
    //if temp goes 10 lower then or eqval to zero

    import 'dart:io';
    main()
    {
        int temp;

        print("Enter a temprecher :");
        temp=int.parse(stdin.readLineSync()!);

        if(temp>100)
        {
            print('Air');
        }
        else if(temp<=100 &&temp>=0)
        {
            print('Water');
        }
        else if(temp<0)
        {
            print('Ice');
        }
        else{
            print('Errer');
        }
    }