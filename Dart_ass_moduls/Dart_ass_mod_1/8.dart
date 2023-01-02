//. Write a program to calculate sum of 5 subjects & find the percentage. Subject marks entered by 
//user. 

import 'dart:io';
 
 main() 
 {
   int s1, s2, s3, s4, s5, sum, total=500;
   double per;
 
   print("\nEnter marks of 1 subjects : ");
   s1=int.parse(stdin.readLineSync()!);

   print("\nEnter marks of 2 subjects : ");
   s2=int.parse(stdin.readLineSync()!);

   print("\nEnter marks of 3 subjects : ");
   s3=int.parse(stdin.readLineSync()!);

   print("\nEnter marks of 4 subjects : ");
   s4=int.parse(stdin.readLineSync()!);

   print("\nEnter marks of 5 subjects : ");
   s5=int.parse(stdin.readLineSync()!);

   
 
   sum = s1 + s2 + s3 + s4 + s5;
   print("\nSum is : $sum");
 
   per = (sum * 100) / total;
   print("\nPercentage : $per");
 
}