import 'dart:io';

void main(List<String> args) {
  List<int> numbers = [
    1,
    5,
    8,
    13,
    -12,
    -4,
    -6,
    -7,
    -13,
    -8,
    1,
    1,
    13,
    13,
    15,
    14,
    -77,
    -66,
    -45,
    6,
    8,
    13,
    13,
    13,
    55,
    66,
    33,
    22,
    88,
    99,
    44,
    12,
    26,
    14,
    42,
    65,
  ];
  analyzeNumbers(numbers);
}

void findAndPrintExtreme(List<int> numbers) {
  int maxWert = numbers.reduce((wert1, wert2) => wert1 > wert2 ? wert1 : wert2);
  print('Die größte Zahl ist: $maxWert');
  int minWert = numbers.reduce((wert1, wert2) => wert1 < wert2 ? wert1 : wert2);
  print('Die kleinste Zahl ist: $minWert');
}

void printNumberTypes(List<int> numbers) {
  int even = 0;
  int odd = 0;
  for (int element in numbers) {
    if (element % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  print('\nEs gibt genau ${numbers.length} Zahlen in der Liste');
  print('Es gibt genau $even gerade Zahlen in der Liste');
  print('Es gibt genau $odd ungerade Zahlen in der Liste');
}

void printDistribution(List<int> numbers) {
  stdout.write('\nFür welche Zahl soll die Häufigkeit ausgegeben werden?\n-> ');
  String? decision = stdin.readLineSync();
  int? gesuchteZahl = int.tryParse(decision ?? '');

  if (gesuchteZahl == null) {
    print('Ungültige Eingabe. Bitte eine gültige Zahl eingeben.');
  }

  int count = numbers.where((zahl) => zahl == gesuchteZahl).length;

  print('Die Zahl $gesuchteZahl kommt $count Mal in der Liste vor.');
}

// Hauptfunktion:
void analyzeNumbers(List<int> numbers) {
  findAndPrintExtreme(numbers);
  printNumberTypes(numbers);
  printDistribution(numbers);
}
