enum Weekday { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  Weekday? weekday;
  weekday = Weekday.friday;

  switch (weekday) {
    case Weekday.monday || Weekday.tuesday:
      print('Monday and Tuesday are exhausting.');
      break;
    case Weekday.wednesday || Weekday.thursday:
      print('Wednesday and Thursday are okay');
      break;
    case Weekday.friday:
      print('Friday is great');
      break;
    case Weekday.saturday || Weekday.sunday:
      print('Weekend is awesome');
      break;
    /*  default:
      print('Invalid data !!!'); */
  }
}
