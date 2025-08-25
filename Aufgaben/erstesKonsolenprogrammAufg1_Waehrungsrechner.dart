import 'dart:io';

void main() {
  String? choice;
  //double? value;
  double? euro;
  double yen,
      exchangeRateYen = 172.45,
      dollar,
      exchangeRateDollar = 1.17,
      poundSterling,
      exchangeRatePoundSterling = 0.87;

  print('\n\tCurrency converter');

  do {
    print('Which currency do you want to convert to?');
    print('Yen, Dollar, Pound');
    choice = stdin.readLineSync() ?? '';
  } while (!(choice.toLowerCase() == 'yen' ||
      choice.toLowerCase() == 'dollar' ||
      choice.toLowerCase() == 'pound' ||
      choice.toLowerCase() == 'pfund'));

  choice = choice.toLowerCase();
  do {
    print('Enter the Euro value');
    euro = double.tryParse(stdin.readLineSync() ?? '0');
  } while (euro == null);

  if (choice == 'yen') {
    yen = exchangeRateYen * euro;
    print('$euro € equal $yen ¥.');
  } else if (choice == 'dollar') {
    dollar = exchangeRateDollar * euro;
    print('$euro € equal $dollar \$.');
  } else if (choice == 'pound' || choice == 'pfund') {
    poundSterling = exchangeRatePoundSterling * euro;
    print('$euro € equal $poundSterling £.');
  }
}
