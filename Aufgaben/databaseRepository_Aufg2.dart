void main(List<String> args) {
  // main Klasse
  DataRepository dR1 = MockDatabaseRepository([]);
  DataRepository dR2 = Broadcast([], ' ', ' ', 0.0);

  dR1.add('Erste Maessage');
  dR1.add('Zweite Message');
  print('\nMessage List');
  print(dR1.show());

  dR2.add('Highschool DxD / Haisukūru Dī Dī');
  dR2.add('Dragonball / Doragonbōru');
  dR2.add('Naruto Shippūden');
  dR2.add('The Eminence in Shadow / Kage no Jitsuryokusha ni Naritakute');
  dR2.add('The Hero Is Overpowered but Overly Cautious / Kono Yūsha ga Ore Tsuē Kuse ni Shinchō Sugiru');
  print('\nBroadcast List');
  print(dR2.show());

  /* dR1.delete(0);
  print('Removed');
  print(dR1.show()); */
}

class Broadcast implements DataRepository {
  List<String> broadcastList;
  String title, description;
  double duration;

  Broadcast(this.broadcastList, this.title, this.description, this.duration);

  @override
  void add(String title) {
    broadcastList.add('\n' + title);
  }

  @override // getMessage/ read
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

  @override // show
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
