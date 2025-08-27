void main(List<String> args) {
  int time = 350;
  // Beispiel: 9%3 = 0;
  convertMinuteToTime(time);
}

convertMinuteToTime(int time) {
  //print(time % 60);
  double hours = time / 60;
  int intHours = hours.toInt();
  //print('Ganze Stunden: $intHours');
  int minutes = time - (intHours * 60);
  //print('Ganze Minuten: $minutes');
  print('Es sind $intHours Stunden und $minutes Minuten');
}
