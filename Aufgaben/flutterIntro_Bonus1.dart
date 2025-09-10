import 'dart:mirrors';

void main(List<String> args) {
  /*   Text t1 = Text(text: 'Hallo');
  Text t2 = Text(text: 'Welt'); */

  MaterialApp myApp = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(text: 'Hallo'),
            Text(text: 'Welt'),
          ],
        ),
      ),
    ),
  );

  print(myApp);
}

class Widget {}

class MaterialApp extends Widget {
  Widget home;
  MaterialApp({required this.home});
}

class Scaffold extends Widget {
  Widget body;
  Scaffold({required this.body});
}

class Center extends Widget {
  Widget child;
  Center({required this.child});
}

class Column extends Widget {
  List<Widget> children = [];
  Column({required this.children});
}

class Text extends Widget {
  String text;
  Text({required this.text});
}
