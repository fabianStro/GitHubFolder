import 'dart:io';

void main() {
  double? tip, pay;
  String more;
  List<double> allTips = [];
  double endTip = 0.0, sum = 0.0;

  do {
    print('Wie hoch ist die Rechnung?');
    pay = double.tryParse(stdin.readLineSync() ?? '');

    print('Wie hoch soll der Prozentsatz sein');
    tip = double.tryParse(stdin.readLineSync() ?? '');

    if (pay == null || tip == null) {
      print('ERROR');
    } else {
      endTip = (pay * tip) / 100;
      print('Das Trinkgeld beträgt: $endTip');
    }

    print('Weitere Rechnungen');
    more = stdin.readLineSync() ?? '';

    allTips.add(endTip);
  } while (more == 'yes');

  for (double element in allTips) {
    sum += element;
  }
  print('Alle Tips: $sum');
}
