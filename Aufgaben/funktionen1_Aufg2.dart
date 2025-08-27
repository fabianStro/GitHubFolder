void main(List<String> args) {
  String mainText = 'Mein Mqain Text';
  int mainMax = 3;
  triplePrint(mainText, mainMax);
}

triplePrint(String text, int max) {
  for (int counter = 0; counter < max; counter++) {
    print(text);
  }
}
