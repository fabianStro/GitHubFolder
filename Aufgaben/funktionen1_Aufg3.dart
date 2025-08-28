void main(List<String> args) {
  /* List<String> jd = ['Johnny', 'Depp'];
  List<String> tc = ['Tom', 'Cruise']; */
  String vName1 = 'David', vName2 = 'Tom', name1 = 'Rind', name2 = 'Cruise';
  reverseInitials(vName1, vName2, name1, name2);
}

reverseInitials(
  String vorname1,
  String vorname2,
  String nname1,
  String nname2,
) {
  print(
    'First Initials: ${vorname1[vorname1.length - 1].toUpperCase()}.${nname1[nname1.length - 1].toUpperCase()}.',
  );
  print(
    'First Initials: ${vorname2[vorname2.length - 1].toUpperCase()}.${nname2[nname2.length - 1].toUpperCase()}.',
  );
}
