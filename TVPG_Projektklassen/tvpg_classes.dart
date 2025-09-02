void main(List<String> args) {
  // Instance
  /*   User user1 = User(' ', 'Fabian', 'mail@mail.com');
  Broadcasts highschoolDxD = Broadcasts(
    'Highschool DxD',
    'Bilder/highschoolDxd.png',
    '13.97.2020 : 22:30',
    'Exemplum textus',
    true,
  ); */
}

// Bei "{}" ist die Reihenfolge der Parameter komplett egal
// und ich muss den "namen" angeben (named Parameter)
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

//####################################################
class Broadcasts {
  String titel, picLink, broadcastDate, shortDescription;
  bool favorite;

  // Constructor
  Broadcasts(this.titel, this.picLink, this.broadcastDate, this.shortDescription, this.favorite);
}
