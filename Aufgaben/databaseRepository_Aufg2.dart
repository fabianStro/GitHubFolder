void main(List<String> args) {
  // main Klasse
  DataRepository dR = MockDatabaseRepository([]);
  dR.sendMaessage('Erste Maessage');
  dR.sendMaessage('Zweite Message');
  print(dR.getMessages());

  dR.delete(0);
  print('Removed');
  print(dR.getMessages());
}

//####################################################
class MockDatabaseRepository implements DataRepository {
  List<String> messages = [];

  // Constructor ################
  MockDatabaseRepository(this.messages);

  // Overrides ##################
  @override // adden/ create
  void sendMaessage(String message) {
    messages.add(message);
  }

  @override // getMessage/ read
  List<String> getMessages() {
    return messages;
  }

  @override
  void update() {}

  @override // delete
  void delete(int index) {
    messages.removeAt(index);
  }
}

//####################################################
abstract class DataRepository {
  void sendMaessage(String message);
  List<String> getMessages();
  void update();
  void delete(int index);
}
