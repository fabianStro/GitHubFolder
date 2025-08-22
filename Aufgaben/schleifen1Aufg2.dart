void main() {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  int length = points.length;
  int result = 0;

  for (int value in points) {
    result += points[value];
  }
  print('Average: ${result / length}');
}
