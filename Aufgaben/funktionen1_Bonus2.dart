void main(List<String> args) {
  List<int> grades = [1, 5, 4, 6, 2, 3, 1, 5, 4, 2];
  analyzeGrades(grades);
}

// Erstelle zwei Funktionen:
void printGrades(List<int> grades) {
  print('Alle Noten: $grades');
}

void calculateAndPrintAverage(List<int> grades) {
  double average = 0.0;
  int result = 0;
  for (int element in grades) {
    result += element;
  }
  average = result / grades.length;
  print('Average: $average');
}

// Hauptfunktion:
void analyzeGrades(List<int> grades) {
  printGrades(grades);
  calculateAndPrintAverage(grades);
}
