void main() {
  int battlepower = 50;
  List<String> characterClass = ['warrior', 'mage', 'archer'];
  List<String> daytime = ['morning', 'noon', 'evening', 'night'];
  List<String> weather = ['sunny', 'rainy', 'stormy'];

  switch (characterClass[1]) {
    case 'warrior':
      // print('You chose a Warrior!');
      battlepower = 50;
      switch (daytime[3]) {
        case 'morning' || 'noon':
          battlepower += 25;
        case 'evening' || 'night':
          battlepower -= 10;
      }
      switch (weather[2]) {
        case 'sunny':
          battlepower += 0;
        case 'rainy':
          battlepower += 25;
        case 'stormy':
          battlepower -= 10;
      }
    case 'mage':
      // print('You chose a Mage!');
      battlepower = 50;
      switch (daytime[3]) {
        case 'morning' || 'noon':
          battlepower -= 10;
        case 'evening' || 'night':
          battlepower += 25;
      }
      switch (weather[2]) {
        case 'sunny':
          battlepower -= 10;
        case 'rainy':
          battlepower += 0;
        case 'stormy':
          battlepower += 25;
      }
    case 'archer':
      // print('You chose an Archer!');
      battlepower = 50;
      switch (daytime[0]) {
        case 'morning' || 'noon':
          battlepower -= 10;
        case 'evening' || 'night':
          battlepower += 25;
      }
      switch (weather[2]) {
        case 'sunny':
          battlepower += 25;
        case 'rainy':
          battlepower += 0;
        case 'stormy':
          battlepower -= 10;
      }
  }
  print('Du hast die Klasse ${characterClass[1].toUpperCase()} gewählt.');
  print('Die Tageszeit: ${daytime[3].toUpperCase()}');
  print('Das Wetter: ${weather[2].toUpperCase()}');
  print('\nBattle Power: $battlepower');

  switch (battlepower) {
    case <= 30:
      print('Deine Battle Power ist zu niedrig!\nDu kannst nicht kämpfen.');
    case > 30 && <= 50:
      print('Die Battlepower ist normal!\nKeine Gefahr');
    case > 50 && <= 75:
      print(
        'Deine Battle Power ist hoch, du kannst gegen starke Gegner kämpfen!\nPotenziell gefährlich.',
      );
    case > 75 && <= 100:
      print(
        'Deine Battle Power ist auf Maximum du kannst gegen extrem starke Gegner kämpfen!\nTötlich.',
      );
  }
}
