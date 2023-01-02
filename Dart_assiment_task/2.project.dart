import 'dart:io';
main()
{
    print("\n\tWelcome to Amazing Pizza and Pasta Pizzeria");
    print("\t*******************************************");

    int menu,pizza,pasta,p=0;
    double t1_price=0,t2_price=0,net_amount=0;
    String? name,yn;
    final pizza_price=10.99;
    final pasta_price=9.5;
    var i ,a=0,b=0,c=0;
    var status=true;

    print(" press 1 : order menu");
    print("press 2 : Exit");
    menu=int.parse(stdin.readLineSync()!);
        while(status)
    {

        if(menu==1)
        {
                     print("pizza menu");
                     print("***********");

             print("1 large pizza = 10.99 AUD ");
             print(" 2 large Pizzas = 20.99 AUD ");
             print(" 3 Large Pizzas = 29.99 AUD");
             print("***Buy 4 or more pizza and get 1.5lt of soft drink free***");
             print("*****************************");
             

        
                     print("pasta menu");
                     print("***********");

            print("large pasta = 9.5 AUD ");
            print("large pastas = 17.00 AUD ");
            print("large pastas = 27.50 AUD");
            print("***Buy 4 or more pastas and get 2 bruschetta free.***");
            print("***Buy 4 or more pizzas and pastas and get 2 chocco brownies ice cream free.");
            print("**************************");

            print("\n Enter your name");
            name=stdin.readLineSync()!;

            print("Welcome ${name}");

            print("Enter number or pizza order you want :");
            pizza=int.parse(stdin.readLineSync()!);
            
            if(pizza < 4)
            {
                p+=pizza;
                t1_price=pizza_price*pizza;
                print("your pizza order amount is :$t1_price");
                net_amount += t1_price;
            }
            else if(pizza >=4)
                {
                    p +=pizza;
                    t1_price=pizza_price*pizza;
                print("your pizza order amount is :$t1_price");
                print("*** Congratulations !! 1.5lt softdrink free *** ");
                net_amount += t1_price;
                a++;
                }
            else
                {
                    print("Invalid Order");
                }

                print("Enter number or pasta order you want :");
                pasta=int.parse(stdin.readLineSync()!);

                if(pasta < 4)
            {
                p+=pasta;
                t2_price=pasta_price*pasta;
                print("your pasta order amount is :$t2_price");
                net_amount += t2_price;
            }
                else if(pasta >=4)
                {
                    p+=pasta;
                    t2_price=pasta_price*pasta;
                    print("your pasta order amount is :$t2_price");
                    print(" *** Congratulations !! get 2 bruschetta free ***");
                    print(" *** Congratulations !! get 2 chocco brownies ice cream free ***");
                    net_amount += t2_price;
                    c++;
                    b++;
                } 
                else
                {
                    print("Invalid Order");
                }
                print("your total pizza amount is :$t1_price");
                print("your total pasta amount is :$t2_price");
                print(" your total order is :${net_amount}");

                
                print("want to enter order from another customer (Y/N) :");
                var    choice=stdin.readLineSync()!;
                if(choice=='n'||choice=='N')
                {
                    status=false;
                }
        }
            print(" payment received from pizza :$t1_price");
            print("payment received from pasta :$t2_price");
            print("payment received today :$net_amount");
            print("Number of pizza and pasta sold in one shift :$p");
            print("Number of 1.5lt soft drink bottles given :$a");
            print("Number of bruschetta given to customer :$b");
            print("Number of chocco brownies ice cream given to customer :$c");
            print("Bye Bye !!!");
        

    }
}
