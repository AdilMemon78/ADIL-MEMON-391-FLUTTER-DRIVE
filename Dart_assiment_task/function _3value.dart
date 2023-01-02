import 'dart:io';
main()
{
   var ans= print(sum());
}
    
String sum()
{
    var num1;
    var num2;
    var ans;
    print("Enter a 1 number :");
    num1=int.parse(stdin.readLineSync()!);
    print("Enter a 2 number :");
    num2=int.parse(stdin.readLineSync()!);
    return ans=num1+num2;
}