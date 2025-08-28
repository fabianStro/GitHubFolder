void main(List<String> args) {
  int result01 = addition(13, 12, 17);
  int result02 = addition(3, 5, 7);
  int result03 = addition(33, 44, 99);

  print('Result 1: $result01');
  print('Result 2: $result02');
  print('Result 3: $result03');
}

int addition(int firstNumber, int secondNumber, int thirdnumber) {
  return firstNumber + secondNumber + thirdnumber;
}
