void main(List<String> args) {
  print('The sum is: ${sum([10, 30, 50, 130, 200])}');
  print('The sum is: ${sum([12, 32, 52, 132, 202])}');
  print('The sum is: ${sum([13, 33, 53, 133, 203])}');
}

int sum(List<int> numbers) {
  int summe = 0;
  for (int element in numbers) {
    summe += element;
  }
  return summe;
}
