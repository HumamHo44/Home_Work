// Use Map and List to create a program that stores weather data for different cities (temperature,
// humidity, etc.). Write a function that can retrieve and print weather details using a city name.
// .___________________________________________________________________.
//                        |Answer|

import 'dart:io';

void main() {
  print("Cities available to view weather status:(Riyadh / Egypt / Syria)");
  String nameCity = stdin.readLineSync()!;
  Map<String, Map<String, dynamic>> weatherReport = {
    'Riyadh': {'temperature': 25.5, 'humidity': 60.0, 'windSpeed': 2},
    'Egypt': {'temperature': 20.5, 'humidity': 40.0, 'windSpeed': 30},
    'Syria': {'temperature': 10, 'humidity': 10, 'windSpeed': 5},
  };
  printweather(weatherReport, nameCity);
}

void printweather(Map<String, Map<String, dynamic>> weatherMap, String city) {
  if (weatherMap.containsKey(city)) {
    var weatherData = weatherMap[city];
    print('Weather data in $city:');
    print('temperature : ${weatherData!['temperature']}');
    print('Humidity : ${weatherData['humidity']}');
    print('WindSpeed : ${weatherData['windSpeed']}');
  }
}
