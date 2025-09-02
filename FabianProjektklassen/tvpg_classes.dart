void main(List<String> args) {
  User user1 = User('The_GrimReaper', 'Fabian', 'mail@mail.com');
  Sendung highschoolDxD = Sendung('Highschool DxD', 'Bilder/highschoolDxd.png', '13.97.2020', true);
}

class User {
  String nick;
  String username;
  String mail;

  // Konstruktor
  User(this.nick, this.username, this.mail);
}

class Sendung {
  String titel, picLink, broadcastDate;
  bool favorite;

  Sendung(this.titel, this.picLink, this.broadcastDate, this.favorite);
}
