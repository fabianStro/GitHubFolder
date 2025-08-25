import 'dart:io';

void main() {
  String fahrenheit, celsius;
  double? f, c;

  stdout.write('Was möchtest du berechnen?\n --> ');
  String decisiion = stdin.readLineSync() ?? '';

  if (decisiion.toLowerCase() == 'fahrenheit') {
    stdout.write('\nGib die Temperatur in Celsius ein: ');
    celsius = stdin.readLineSync() ?? '';
    c = double.tryParse(celsius);

    if (c == null) {
      print('\nUngültige Eingabe! Bitte eine gültige Zahl eingeben.');
      stdout.write('Bitte gültige Temperatur eingeben: ');
      celsius = stdin.readLineSync() ?? '';
    } else {
      f = (c * 9 / 5) + 32;
      fahrenheit = f.toStringAsFixed(2);
      print('\nDie Temperatur in Fahrenheit ist: $fahrenheit °F');
    }
  } else if (decisiion.toLowerCase() == 'celsius') {
    stdout.write('\nGib die Temperatur in Fahrenheit ein: ');
    fahrenheit = stdin.readLineSync() ?? '';
    f = double.tryParse(fahrenheit);

    if (f == null) {
      print('\nUngültige Eingabe! Bitte eine gültige Zahl eingeben.');
      stdout.write('Bitte gültige Temperatur eingeben: ');
      fahrenheit = stdin.readLineSync() ?? '';
    } else {
      c = (f - 32) * 5 / 9;
      celsius = c.toStringAsFixed(2);
      print('\nDie Temperatur in Celsius ist: $celsius °C');
    }
  }
}
