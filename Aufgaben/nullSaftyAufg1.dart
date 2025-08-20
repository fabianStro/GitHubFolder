import 'dart:io';
import 'dart:math';

void main() {
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];
  /* 
            Wenn ich die for-Schleife funktioniert der Code ohne Probleme, was leider 
            ohne die Schleife nicht der Fall ist und ich den Fehler nicht sehe. Er 
            führt die if-Anweisungen nicht aus
  */

  int counterRain = 0;
  int counterWind = 0;
  int counterTemp = 0;

  List<double?> temps = [];
  List<double?> rains = [];
  List<double?> winds = [];

  temps.add(weatherData[0]['temp']);
  temps.add(weatherData[1]['temp']);
  temps.add(weatherData[2]['temp']);

  rains.add(weatherData[0]['rain']);
  rains.add(weatherData[1]['rain']);
  rains.add(weatherData[2]['rain']);

  winds.add(weatherData[0]['wind']);
  winds.add(weatherData[1]['wind']);
  winds.add(weatherData[2]['wind']);

  // for (int i = 0; i < 3; i++) {
  if (temps[0] == null) {
    counterTemp++;
    print('HIER');
  } else if (temps[1] == null) {
    counterTemp++;
  } else if (temps[2] == null) {
    counterTemp++;
  }

  if (rains[0] == null) {
    counterRain++;
  } else if (rains[1] == null) {
    counterRain++;
  } else if (rains[2] == null) {
    counterRain++;
  }

  if (winds[0] == null) {
    counterWind++;
  } else if (winds[1] == null) {
    counterWind++;
  } else if (winds[2] == null) {
    counterWind++;
  }
  //}

  double? avgTemp =
      ((temps[0] ?? 0.0) + (temps[1] ?? 0.0) + (temps[2] ?? 0.0)) /
      (3 - counterTemp);
  double? avgRain =
      ((rains[0] ?? 0.0) + (rains[1] ?? 0.0) + (rains[2] ?? 0.0)) /
      (3 - counterRain);
  double? avgWind =
      ((winds[0] ?? 0.0) + (winds[1] ?? 0.0) + (winds[2] ?? 0.0)) /
      (3 - counterWind);

  print('Hallo 2');

  print('\nNull Einträge Regen: $counterRain');
  print('Null Einträge Wind: $counterWind');
  print('Null Einträge Temperatur: $counterTemp\n');

  print('Duchschnittsregen: $avgRain mm');
  print('Durchschnittswind: $avgWind km/h');
  print('Durchnschnittstemepratur: $avgTemp °C');
}
