import 'dart:io';
main()
{
    final today_price=4783;
    double total_price,net_amount,p_qty;
    String? name,last_name,gender,choice;
    int age;

    print("Welcome to kalyan jawellers");
    print("****************************");
    

    print("Enter a your name :");
    name=stdin.readLineSync();

     print("Enter a your last_name :");
     last_name=stdin.readLineSync();

      print("Enter your gender : ");
      gender=stdin.readLineSync()!;

       if (gender=="F")
            gender="f";
            else if(gender=="M")
            gender="m";
    
            if(gender!="f"&& gender!="m")
            print("Invalid gender name entered.");


           
            switch(gender)
        {
            case 'm':
            {
                print("Enter a your age :");
                age=int.parse(stdin.readLineSync()!);

                if(age>=65)
                {
                    print("Discount avalible ");
                    print("\t1lakh \t2lakh \t3lakh");
                    print("\t10% \t20% \t30% ");
                    print("Do you want to continue 'yes'or'no'");
                    choice=stdin.readLineSync()!;
                    if(choice=='y' || choice=='Y')
                    {
                        print("how many purchase in gold");
                        p_qty=double.parse(stdin.readLineSync()!);
                        print("total amounts${total_price=p_qty*today_price}");

                        if(total_price > 10000 && today_price<100000)
                        {
                            print("-----------------");
                            print("Discount is 10%");
                            print("pay bill dicount ${net_amount=(total_price*10)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else if(total_price >= 100000 && today_price<=300000)
                        {
                            print("-----------------");
                            print("Discount is 20%");
                            print("pay bill amount ${net_amount=(total_price*20)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else if(total_price > 300000)
                        {
                            print("-----------------");
                            print("Discount is 30%");
                            print("pay bill amount ${net_amount=(total_price*30)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else
                        {
                            print(" pay bill price${total_price=today_price*p_qty}");
                        }
                    }

                }
                    else if(age>=0 && age<65)
                {
                      print("Discount avalible ");
                      print("\t1lakh \t2lakh \t3lakh");
                      print("\t05% \t15% \t25% ");
                      print("Do you want to continue 'y'or'n'");
                      choice=stdin.readLineSync()!;
                     if(choice=='y' || choice=='Y')
                    {
                        print("how many purchase in gold");
                        p_qty=double.parse(stdin.readLineSync()!);
                        print("total ${total_price=p_qty*today_price}");

                        if(total_price > 10000 && today_price<100000)
                        {
                            print("-----------------");
                            print("Discount is 05%");
                            print("pay bill amount ${net_amount=(total_price*05)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else if(total_price >= 100000 && today_price<=300000)
                        {
                            print("-----------------");
                            print("Discount is 15%");
                            print("pay bill amount ${net_amount=(total_price*15)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else if(total_price > 300000)
                        {
                            print("-----------------");
                            print("Discount is 25%");
                            print("pay bill amount ${net_amount=(total_price*25)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else
                        {
                            print(" pay bill price${total_price=today_price*p_qty}");
                        }
                    }
                        else
                    {
                         print("Thanks for shooping");
                    }
                }
                    else
                {
                    print("invalid age");
                    print("Thanks for shooping");
                }
            }
                break;
            case 'f':
            {
                print("Enter a your age :");
                age=int.parse(stdin.readLineSync()!);
                if(age>=65)
                {
                    print("Discount avalible ");
                    print("\t1lakh \t2lakh \t3lakh");
                    print("20% 30% 40% ");
                    print("Do you want to continue 'y'or'n'");
                    choice=stdin.readLineSync()!;
                    if(choice=='y' || choice=='Y')
                    {
                        print("how many purchase in gold");
                        p_qty=double.parse(stdin.readLineSync()!);
                        print("total ${total_price=p_qty*today_price}");

                        if(total_price > 10000 && today_price<100000)
                        {
                            print("-----------------");
                            print("Discount is 20%");
                            print("pay bill amount ${net_amount=(total_price*20)/100}");
                            print("-----------------");
                                print("thanks for shooping");
                        }
                        else if(total_price >= 100000 && today_price<=300000)
                        {
                            print("-----------------");
                            print("Discount is 30%");
                            print("pay bill amount ${net_amount=(total_price*30)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else if(total_price > 300000)
                        {
                            print("-----------------");
                            print("Discount is 40%");
                            print("pay bill amount ${net_amount=(total_price*40)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else
                        {
                            print(" pay bill price${total_price=today_price*p_qty}");
                        }
                    }
                }
                    else if(age>=0 && age<65)
                {
                    print("Discount avalible ");
                    print("\t1lakh \t2lakh \t3lakh");
                    print("15% 25% 35% ");
                    print("Do you want to continue 'y'or'n'");
                    choice=stdin.readLineSync()!;
                    if(choice=='y' || choice=='Y')
                    {
                        print("how many purchase in gold");
                        p_qty=double.parse(stdin.readLineSync()!);
                        print("total ${total_price=p_qty*today_price}");

                        if(total_price > 10000 && today_price<100000)
                        {
                            print("-----------------");
                            print("Discount is 15%");                        
                            print("pay bill amount ${net_amount=(total_price*15)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                            else if(total_price >= 100000 && today_price<=300000)
                        {
                            print("-----------------");
                            print("Discount is 25%");
                            print("pay bill amount ${net_amount=(total_price*25)/100}");
                            print("-----------------");
                            print("thanks for shooping");
                        }
                        else if(total_price > 300000)
                        {
                            print("-----------------");
                            print("Discount is 35%");
                                print("pay bill amount ${net_amount=(total_price*35)/100}");
                            print("-----------------");

                            print("thanks for shooping");
                        }
                            else
                        {
                            print(" pay bill price${total_price=today_price*p_qty}");
                        }
                    }
                      else
                    {
                         print("Thanks for shooping");
                    }
                }
                else
                {
                    print("invalid age");
                    print("Thanks for shooping");
                }
            }
        }
}
      