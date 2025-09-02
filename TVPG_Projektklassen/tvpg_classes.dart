void main(List<String> args) {
  // Instance
  User user1 = User('The_GrimReaper', 'Fabian', 'mail@mail.com');
  Sendung highschoolDxD = Sendung(
    'Highschool DxD',
    'Bilder/highschoolDxd.png',
    '13.97.2020 : 22:30',
    'Exemplum textus',
    true,
  );
}

//####################################################
// Class Section
//####################################################
class User {
  String nick;
  String realName;
  String mail;

  // Constructor
  User(this.nick, this.realName, this.mail);
}

class Sendung {
  String titel, picLink, broadcastDate, shortDescription;
  bool favorite;

  // Constructor
  Sendung(this.titel, this.picLink, this.broadcastDate, this.shortDescription, this.favorite);
}
