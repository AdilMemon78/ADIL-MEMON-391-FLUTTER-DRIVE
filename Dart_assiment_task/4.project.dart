import 'dart:io';

void main() 
{
  var number = 0;
  var name;

  print("Enter your name");
   name = stdin.readLineSync()!;
  for (var i = 0; i < name.length; i++) 
  {
    number = number +1;

    print("$number ${name[i]}");
  }
  print("There are in $number cartory ");
}