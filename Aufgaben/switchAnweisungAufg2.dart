import 'dart:io';

void main() {
  dynamic sex, age;

  stdout.write('Enter the Sex: ');
  sex = stdin.readLineSync()!.toLowerCase();

  stdout.write('Enter the Age: ');
  age = int.parse(stdin.readLineSync()!);

  switch (sex) {
    case 'male':
      switch (age) {
        case > 20 && <= 25:
          print("Im Schnitt 181,4m");
        case > 25 && <= 30:
          print("Im Schnitt 181,3m");
        case > 30 && <= 35:
          print("Im Schnitt 180,4m");
        default:
          print("Invalid range");
      }
    case 'female':
      switch (age) {
        case > 20 && <= 25:
          print("Im Schnitt 167,5m");
        case > 25 && <= 30:
          print("Im Schnitt 167,3 m");
        case > 30 && <= 35:
          print("Im Schnitt 167,2");
        default:
          print("Invalid range");
      }
  }
}
