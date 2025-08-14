// import 'dart:ffi';
import 'dart:io';

void main () {
  final String greet = 'Hello\nThis is my first dart programm';
  String name;

  double result = 0.0;

  List<int> numbers = [3, 5, 7 , 13];

  var decision;
  
  print('\n\t-->Start<--\n');
  print('$greet\n');

  print('Insert name: ');
  name = stdin.readLineSync()!;    
  
  print('\n--------------------------------------------------');
  print('\nHello $name\n');

  
  print('\nCalculator (calc*) or perosnal information (pi)?');
  print('Zahlenbereich -9.223.372.036.854.775.808 bis 9.223.372.036.854.775.807.');
  decision = stdin.readLineSync();

  if(decision == 'calc') {

    result = calc();
    String numberFormat = result.toStringAsFixed(4);
    print('\nResult: $numberFormat');

  } else if(decision == 'pi' && name == 'Fabian') {
    personalInfo();

  } else if(decision == 'pi' && name != 'Fabian') {
    decision = 'personal information';
    print('\nYou are not Fabian, you are $name !!!');
    print('You are not allowed to see the $decision !!!');

  } else {
    print('\nYou have to decide between calculator or personal information');

  }
  
  print('\nWas für ein Hohn');
  print('\n\t-->Ende<--\n');

}
// ############################################################################################
// Function Section
// ############################################################################################

// double calc(double zahl, double zahl2)
double calc() {

double functionResult = 0.0;
print('Wähle die Operation');
var choice = stdin.readLineSync();

print('Insert number #1: ');
double zahl = double.parse(stdin.readLineSync()!);

print('Insert number #2: ');
double zahl2 = double.parse(stdin.readLineSync()!);

switch (choice) {
    case '+':
      functionResult = zahl + zahl2;
      break;
    case '-': 
      functionResult = zahl - zahl2;
      break;
    case '*':
      functionResult = zahl * zahl2;
      break;
    case '/':
      functionResult = zahl / zahl2;
      break;
    default:
      print('Invalid operation');
      return 0.0;
  }

  print('\n-->Calculation done');

  return functionResult;
}
// ############################################################################################
// Personal Information Section
// ############################################################################################

personalInfo() {
  final Map<String, dynamic> personalInformation = {'\nName' : 'Strottmann' , '\nFirst Name' : 'Fabian' , '\nBirth date' : '09.07.1988' , 
  '\nAddress' : 'Schilfkamp 20' , '\nPostal code' : 30851 , '\nLocation' : 'Langehagen'};

/*   print('\n\nMapgroesse');
  print(personalInformation.length); */

  print('\n\nPersonal information\n $personalInformation');
 }