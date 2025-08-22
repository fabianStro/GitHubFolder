void main() {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = [
    '\nJulietta',
    '\nBenjamino',
    '\nHans-Guenther',
    '\nEvalinea',
    '\nFiona',
    '\nGregory',
    '\nLeonhart',
  ];
  Map<String, int> nameMap = {};

  for (int i = 0; i < points.length; i++) {
    nameMap[names[i]] = points[i];
  }
  print('${nameMap}');
}
