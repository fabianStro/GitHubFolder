void main() {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = [
    'Julietta',
    'Benjamino',
    'Hans-Guenther',
    'Evalinea',
    'Fiona',
    'Gregory',
    'Leonhart',
  ];
  Map<String, int> nameMap = {};

  for (int i = 0; i < points.length; i++) {
    nameMap[names[i]] = points[i];
  }

  for (String name in nameMap.keys) {
    print('Name: $name');
  }
  for (int point in nameMap.values) {
    print('Points: $point');
  }
  print('\n${nameMap}');
}
