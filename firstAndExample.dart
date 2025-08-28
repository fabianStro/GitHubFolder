// import 'dart:ffi';
import 'dart:io';

void main(List<String> user) {
  String name;
  if (user.isEmpty) {
    name = 'Fabian';
  } else {
    name = user[0];
  }
  final String greet = 'Hello\nWelcome to my First Dart Program\n';

  String decision;
  String numberFormat;
  double result = 0.0;

  /* 
    List<int> numbers = [3, 5, 7 , 13];
    Map<String, int> divMap = {'Erster Key': 1, 'Zweiter Key': 2, 'Dritter Key': 3, 'Vierter Key': 4}; 
  */

  print('\n\t--> Start <--\n');
  print('$greet');

  print('\n--------------------------------------------------');
  print('\nHello $name\n');

  print('\nCalculator (calc) or perosnal information (pi)?');

  decision = stdin.readLineSync() ?? '';
  decision = decision.toLowerCase();

  print('\nYou have chosen: $decision\n');

  if (decision == 'calc' || decision == 'calculator') {
    result = calc();
    numberFormat = result.toStringAsFixed(4);
    print('\nResult: $numberFormat');
  } else if (decision == 'pi' && name == 'Fabian') {
    personalInfo();
  } else if (decision == 'pi' && name != 'Fabian') {
    decision = 'personal information';
    print('\nYou are not Fabian, you are $name !!!');
    print('You are not allowed to see the $decision !!!');
  } else {
    print('\nYou have to decide between calculator or personal information');
  }

  print('\nWas für ein Hohn');
  print('\n\t--> Ende <--\n');
}
// ############################################################################################
// Claculator Function Section
// ############################################################################################

// double calc(double zahl, double zahl2) -- wenn Werte aus main übergeben werden sollen
// Werte werden in der Funktion abgefragt
double calc() {
  double functionResult = 0.0;
  double? zahl;
  double? zahl2;
  String operant;

  stdout.write('Wähle die Operation (+, -, *, /): ');
  operant = stdin.readLineSync() ?? '';

  stdout.write('Insert number #1: ');
  zahl = double.tryParse(stdin.readLineSync() ?? '0');

  stdout.write('Insert number #2: ');
  zahl2 = double.tryParse(stdin.readLineSync() ?? '0');

  /* 
    Für den switch ist kein break erforderlich
    !!!! fallthrough !!!
  */
  if (zahl == null || zahl2 == null) {
    print('Invalid number input');
    return 0.0;
  } else {
    if (operant != '+' && operant != '-' && operant != '*' && operant != '/') {
      print('Invalid operation');
    } else {
      switch (operant) {
        case '+':
          functionResult = zahl + zahl2;
        case '-':
          functionResult = zahl - zahl2;
        case '*':
          functionResult = zahl * zahl2;
        case '/':
          functionResult = zahl / zahl2;
        default:
          print('Invalid operation');
          return 0.0;
      }
      print('\n--> Calculation done');
    }
  }
  return functionResult;
}

// ############################################################################################
// Personal Information Function Section
// ############################################################################################

personalInfo() {
  final Map<String, dynamic> personalInformation = {
    '\nName': 'Strottmann',
    '\nFirst Name': 'Fabian',
    '\nBirth date': '09.07.1988',
    '\nAddress': 'Schilfkamp 20',
    '\nPostal code': 30851,
    '\nLocation': 'Langehagen',
  };

  print('\nMapgroesse: ${personalInformation.length}');

  print('\nPersonal information\n $personalInformation');
}
