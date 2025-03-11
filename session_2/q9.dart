import 'dart:io';

void main(){
//   Switch Case with Seasons
// Objective: Use switch for multiple cases.
// Instructions:
// - Create an integer variable month with a value between 1 and 12.
// - Use a switch statement to print the season based on the month
  print("Enter your desired month");
  int month = int.parse(stdin.readLineSync()!);
  switch (month) {
    case 1:
      print("Winter");
      break;
    case 2:
      print("Winter");
      break;
    case 3:
      print("Spring");
      break;
    case 4:
      print("Spring");
      break;
    case 5:
      print("Spring");
      break;
    case 6:
      print("Summer");
      break;
    case 7:
      print("Summer");
      break;
    case 8:
      print("Summer");
      break;
    case 9:
      print("Autumn");
      break;
    case 10:
      print("Autumn");
      break;
    case 11:
      print("Autumn");
      break;
    case 12:
      print("Winter");
      break;
    default:
      print("Wrong Number");
      break;
  }
}


