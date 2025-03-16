import 'dart:io';

void main() {
  //   4. Weather Report:
  // Use  Map  and  List  to  create  a  program  that  stores  weather  data  for  different  cities  (temperature,
  // humidity, etc.). Write a function that can retrieve and print weather details using a city name.
  Map<String, List> report = {};
  weatherReportFunction(report);
}

void weatherReportFunction(Map<String, List> report) {
  report = {};
  while (true) {
    List<int> weatherData = [];
    print("Hello this is the weather report");
    print("Enter 1 to add a city with a weather report");
    print("Enter 2 to print a city's weather report");
    print("Enter 3 to exit");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter the city name");
        String city = stdin.readLineSync()!;
        print("Enter it's temperature");
        int temperature = int.parse(stdin.readLineSync()!);
        print("Enter it's humidity");
        int humidity = int.parse(stdin.readLineSync()!);
        weatherData.addAll([temperature, humidity]);
        report[city] = weatherData;
        break;
      case 2:
        print("Enter your city");
        String city = stdin.readLineSync()!;
        if (report.containsKey(city)) {
          print(report[city]);
        } else {
          print("not founded");
        }
        break;
      case 3:
        print("Exiting ...");
        break;
      default:
        print("Wrong input");
        break;
    }
    if (choice == 3) {
      break;
    }
  }
}
