import 'dart:io';

void main(List<String> args) {
  // main Klasse
  DataRepository dR1 = MockDatabaseRepository([]);
  DataRepository dR2 = Broadcast([], ' ', ' ', 0.0, false);
  User user = User(13, 'root', '', 'Strottmann', 'Fabian');

  dR1.add('Erste Maessage');
  dR1.add('Zweite Message');
  print('\nMessage List');
  print(dR1.show());
  user.printUser();
  dR2.add('Highschool DxD / Haisukūru Dī Dī');
  // Genre: Fantasy, Comedy, Etchi, Harem
  dR2.add('Dragonball / Doragonbōru');
  // Genre: Abenteuer, Fantasy, Komödie, Shōnen
  dR2.add('Naruto Shippuden / Naruto Shippūden');
  // Genre: Shōnen, Action, Abenteuer, Comedy, Fantasy, Drama, Romantik
  dR2.add('The Eminence in Shadow / Kage no Jitsuryokusha ni Naritakute');
  // Genre: Isekai, Abenteuer
  dR2.add('The Hero Is Overpowered but Overly Cautious / Kono Yūsha ga Ore Tsuē Kuse ni Shinchō Sugiru');
  // Genre: Isekai, Fantasy, Comedy, Action
  print('\nBroadcast List');
  print(dR2.show());

  /* dR1.delete(0);
  print('Removed');
  print(dR1.show()); */
}

class User {
  final int userID;
  String userName, picURL;
  String? lastName, firstName;
  // String genre;

  User(this.userID, this.userName, this.picURL, [this.lastName, this.firstName]);

  void printUser() {
    print('\nUser ID: $userID\nUser Name: $userName\nPicture URL: $picURL');
  }
}

class Broadcast implements DataRepository {
  List<String> broadcastList;
  String title, description;
  double duration;
  bool isFavorite = false;

  Broadcast(this.broadcastList, this.title, this.description, this.duration, this.isFavorite);

  @override
  void add(String title) {
    if (true) {
      isFavorite = true;
      broadcastList.add('\n' + title + '\t' + '$isFavorite');
    }
  }

  @override // read
  List<String> show() {
    return broadcastList;
  }

  @override
  void update() {}

  @override // delete
  void delete(int index) {
    broadcastList.removeAt(index);
    if (broadcastList.isNotEmpty) {
      broadcastList.removeAt(index);
    } else {
      print('Liste leer');
    }
  }
}

//####################################################
class MockDatabaseRepository implements DataRepository {
  List<String> messages = [];

  // Constructor ################
  MockDatabaseRepository(this.messages);

  // Overrides ##################
  @override // adden
  void add(String message) {
    messages.add('\n' + message);
  }

  @override // read
  List<String> show() {
    return messages;
  }

  @override
  void update() {}

  @override // delete
  void delete(int index) {
    if (messages.isNotEmpty) {
      messages.removeAt(index);
    } else {
      print('Liste leer');
    }
  }
}

//####################################################
abstract class DataRepository {
  void add(String message);
  List<String> show();
  void update();
  void delete(int index);
}
