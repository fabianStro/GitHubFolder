void main(List<String> args) {
  print('Is Even: ${isNumberEven(13)}');
}

bool isNumberEven(int number) {
  return number % 2 == 0 ? true : false;
}
