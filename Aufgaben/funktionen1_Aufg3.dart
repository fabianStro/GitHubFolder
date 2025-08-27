void main(List<String> args) {
  /* List<String> jd = ['Johnny', 'Depp'];
  List<String> tc = ['Tom', 'Cruise']; */
  String vName1 = 'Johnny', vName2 = 'Tom', name1 = 'Depp', name2 = 'Cruise';
  reverseInitials(vName1, vName2, name1, name2);
}

reverseInitials(
  String vorname1,
  String vorname2,
  String nname1,
  String nname2,
) {
  print(
    'First Initials: ${vorname1[5].toUpperCase()}.${nname1[3].toUpperCase()}.',
  );
  print(
    'First Initials: ${vorname2[2].toUpperCase()}.${nname2[5].toUpperCase()}.',
  );
}
