void main(List<String> args) {}

class ChatMessage implements DataRepository {
  final String message;

  // Constructor
  ChatMessage(this.message);

  // Overrides
  @override
  void sendMaessage(String message) {
    print('Message sent: $message');
  }

  @override
  List<ChatMessage> getMessages() {
    return [this];
  }

  @override
  void create() {}

  @override
  void read() {}

  @override
  void update() {}

  @override
  void delete() {}
}

abstract class DataRepository {
  void sendMaessage(String message);
  List<ChatMessage> getMessages();

  void create();
  void read();
  void update();
  void delete();
}
