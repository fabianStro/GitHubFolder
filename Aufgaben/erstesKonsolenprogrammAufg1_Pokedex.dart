import 'dart:io';

void main() {
  int? index;
  String? more, name;
  Map<int, String> pokeliste = {
    1: 'Bisasam',
    2: 'Bisaknosp',
    3: 'Bisaflor',
    4: 'Glumanda',
    5: 'Glutexo',
    6: 'Glurak',
    7: 'Schiggy',
    8: 'Schillok',
    9: 'Turtok',
    10: 'Raupy',
    11: 'Safcon',
    12: 'Smettbo',
    13: 'Hornliu',
    14: 'Kokuna',
    15: 'Bibor',
    16: 'Taubsi',
    17: 'Tauboga',
    18: 'Tauboss',
    19: 'Rattfratz',
    20: 'Rattikal',
    21: 'Habitak',
    22: 'Ibitak',
    23: 'Rettan',
    24: 'Arbok',
    25: 'Pikachu',
    26: 'Raichu',
    27: 'Sandan',
    28: 'Sandamer',
    29: 'Nidoran (w)',
    30: 'Nidorina',
    31: 'Nidoqueen',
    32: 'Nidoran (m)',
    33: 'Nidorino',
    34: 'Nidoking',
    35: 'Piepi',
    36: 'Pixi',
    37: 'Vulpix',
    38: 'Vulnona',
    39: 'Pummeluff',
    40: 'Knuddeluff',
    41: 'Zubat',
    42: 'Golbat',
    43: 'Myrapla',
    44: 'Duflor',
    45: 'Giflor',
    46: 'Paras',
    47: 'Parasek',
    48: 'Bluzuk',
    49: 'Omot',
    50: 'Digda',
    51: 'Digdri',
    52: 'Mauzí',
    53: 'Snobilikat',
    54: 'Enton',
    55: 'Entoron',
    56: 'Menki',
    57: 'Rasaff',
    58: 'Fukano',
    59: 'Arkani',
    60: 'Quapsel',
    61: 'Quaputzi',
    62: 'Quappo',
    63: 'Abara',
    64: 'Kadabra',
    65: 'Simsala',
    66: 'Machollo',
    67: 'Maschok',
    68: 'Machomei',
    69: 'Knofensa',
    70: 'Ultrigatia',
    71: 'Sarzenia',
    72: 'Tentacha',
    73: 'Tentoxa',
    74: 'Kleinstein',
    75: 'Georok',
    76: 'Geowaz',
    77: 'Ponita',
    78: 'Galoppa',
    79: 'Flegmon',
    80: 'Lahmus',
    81: 'Magnetilo',
    82: 'Magneton',
    83: 'Porenta',
    84: 'Dodu',
    85: 'Dodri',
    86: 'Jurob',
    87: 'Jugong',
    88: 'Sleima',
    89: 'Sleimok',
    90: 'Muschas',
    91: 'Austos',
    92: 'Nebulak',
    93: 'Apollo',
    94: 'Gengar',
    95: 'Onix',
    96: 'Traumato',
    97: 'Hypno',
    98: 'Krabby',
    99: 'Kingler',
    100: 'Voltobal',
    101: 'Lekrobal',
    102: 'Owei',
    103: 'Kokowei',
    104: 'Tragosso',
    105: 'Knogga',
    106: 'Kicklee',
    107: 'Nockchan',
    108: 'Schlurp',
    109: 'Smogon',
    110: 'Smogmog',
    111: 'Rihorn',
    112: 'Rizeros',
    113: 'Chaneira',
    114: 'Tangela',
    115: 'Kangama',
    116: 'Seeper',
    117: 'Seemon',
    118: 'Goldini',
    119: 'Golking',
    120: 'Sterndu',
    121: 'Starmie',
    122: 'Pantimos',
    123: 'Sichlor',
    124: 'Rossana',
    125: 'Elektek',
    126: 'Magmar',
    127: 'Pinsir',
    128: 'Tauros',
    129: 'Karpador',
    130: 'Garados',
    131: 'Lapras',
    132: 'Ditto',
    133: 'Evoli',
    134: 'Aquana',
    135: 'Blitzara',
    136: 'Flamara',
    137: 'Porygon',
    138: 'Amonitas',
    139: 'Amoroso',
    140: 'Kabuto',
    141: 'Kabutops',
    142: 'Aerodactyl',
    143: 'Relaxo',
    144: 'Arktos',
    145: 'Zaptos',
    146: 'Lavados',
    147: 'Dratini',
    148: 'Dragonir',
    149: 'Dragoran',
    150: 'Mewto',
    151: 'Mew',
  };

  print('\n\tWelcome to my Pokedex\n');
  print('Search by index or name');
  String? decision = stdin.readLineSync() ?? '';

  if (decision == 'index') {
    do {
      stdout.write('Specify the index of the pokelist (1-151): ');
      index = int.tryParse(stdin.readLineSync() ?? '0');
      if (index == null) {
        print('Invalid Index');
      } else if (index < 1 || index > 151) {
        print('The index must be between 1 and 151.');
      } else {
        print('The name of the Pokemon is : ${pokeliste[index]}');
      }
      stdout.write('Weitere: ');
      more = stdin.readLineSync();
    } while (more == 'yes');
  }
  /*   if (decision == 'name') {
    do {
      stdout.write('Specify the name of the pokelist: ');
      name = stdin.readLineSync() ?? '0';
      print('The Index of $name = ${(pokeliste)}');
      stdout.write('Weitere: ');
      more = stdin.readLineSync();
    } while (more == 'yes');
  } */
}
