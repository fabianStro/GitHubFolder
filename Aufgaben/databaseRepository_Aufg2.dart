void main(List<String> args) {
  // main Klasse
  DataRepository dR = MockDatabaseRepository([], 0);
  dR.sendMaessage('Erste Maessage');
  dR.sendMaessage('Zweite Message');
  print(dR.getMessages());
  dR.delete(0);
  print('Removed');
  print(dR.getMessages());
}

class MockDatabaseRepository implements DataRepository {
  //final String message;
  List<String> messages = [];
  int index;

  // Constructor
  MockDatabaseRepository(this.messages, this.index);

  // Overrides
  @override
  void sendMaessage(String message) {
    messages.add(message);
  }

  @override
  List<String> getMessages() {
    return messages;
  }

  @override
  void update() {}

  @override
  void delete(int index) {
    messages.removeAt(index);
  }
}

abstract class DataRepository {
  void sendMaessage(String message);
  List<String> getMessages();
  void update();
  void delete(int index);
}
