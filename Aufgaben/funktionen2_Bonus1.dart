void main(List<String> args) {
  print('Die größten Zahlen sind: ');
  print(calculateLargerNumber(3, 5));
  print(calculateLargerNumber(13, 12));
  print(calculateLargerNumber(33, 55));
}

int calculateLargerNumber(int number1, int number2) {
  return number1 > number2 ? number1 : number2;
}
