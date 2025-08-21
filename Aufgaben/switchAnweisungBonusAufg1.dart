void main() {
  int battlepower = 10;
  List<String> characterClass = ['warrior', 'mage', 'archer'];
  List<String> daytime = ['morning', 'noon', 'evening', 'night'];
  List<String> weather = ['sunny', 'rainy', 'stormy'];

  switch (characterClass[1]) {
    case 'warrior':
      print('You chose a Warrior!');
      battlepower = 50;
      switch (daytime[3]) {
        case 'morning' || 'noon':
          battlepower += 10;
        case 'evening' || 'night':
          battlepower += 0;
      }
      switch (weather[2]) {
        case 'sunny':
          battlepower += 0;
        case 'rainy':
          battlepower += 10;
        case 'stormy':
          battlepower += 0;
      }
    case 'mage':
      print('You chose a Mage!');
      battlepower = 50;
      switch (daytime[3]) {
        case 'morning' || 'noon':
          battlepower += 0;
        case 'evening' || 'night':
          battlepower += 10;
      }
      switch (weather[2]) {
        case 'sunny':
          battlepower += 0;
        case 'rainy':
          battlepower += 0;
        case 'stormy':
          battlepower += 10;
      }
    case 'archer':
      print('You chose an Archer!');
      battlepower = 50;
      switch (daytime[0]) {
        case 'morning' || 'noon':
          battlepower += 10;
        case 'evening' || 'night':
          battlepower += 0;
      }
      switch (weather[2]) {
        case 'sunny':
          battlepower += 0;
        case 'rainy':
          battlepower += 0;
        case 'stormy':
          battlepower += 10;
      }
  }

  print('Battle Power: $battlepower');
}
