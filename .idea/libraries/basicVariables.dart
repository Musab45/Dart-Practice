import 'dart:io';

// Take input from user using readLineSync() and convert it from String? to int? and return
int? inputInt()
{
  String? input = stdin.readLineSync();
  int? returnNum;
  if(input != null)
    {
      returnNum=int.tryParse(input);
    }
  if(returnNum != null)
    {
      return returnNum;
    }
  else
    {
      return null;
    }
}

void main()
{
  while(true)
    {
      String? choice;
      dynamic? result;
      print('--  Arithmetic Calculator  --');
      print('Enter Number 1: ');
      int? num1 = inputInt();
      print('Enter Number 2: ');
      int? num2 = inputInt();
      int? sum;
      if(num1 == null || num2 == null)
      {
        print('One of the Provided Numbers was Null');
      }
      else
      {
        print('Enter Operation to Perform: ');
        choice = stdin.readLineSync();
      }
      switch(choice)
      {
        case'+':
          result = num1! + num2!;
          print('Sum:\n$result');
          break;
        case'-':
          result = num1! - num2!;
          print('Difference:\n$result');
          break;
        case'*':
          result = num1! * num2!;
          print('Product:\n$result');
          break;
        case'/':
          result = num1! / num2!;
          print('Dividend:\n$result');
          break;
        default:
          print('Unexpected Error! Check Entered Values for a Null Entry.\n');
      }
      print('\n\n\n');
    }
}