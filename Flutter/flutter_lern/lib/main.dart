import 'package:flutter/material.dart';

class Schluessel {}

class Auto {
  Auto(this.farbe, this.marke, this.logo) {
    print('Auto konstruktor');
  }

  String? farbe;
  String? marke;
  String? logo;

  Zuendung(Schluessel schluessel) {
    print('Startet');
  }
}

class Lkw extends Auto {
  Lkw(super.farbe, super.marke, super.logo, this.maxBel) {
    print('LKW Konsruktor');
  }
  int maxBel = 7;

  @override
  Zuendung(Schluessel schluessel) {
    super.Zuendung(schluessel);
    print('Lkw');
  }
  //auto(this.farbe, this.marke, this.logo);

  /* String? farbe;
  String? marke;
  String? logo; */
}

void main() {
  /*   runApp(const MainApp());
 */
  Lkw lkw = Lkw('rit', 'MBW', 'Setrn', 4);
  lkw.Zuendung(Schluessel());
  Auto auto = Auto('gelb', 'VW', 'VW');
  auto.Zuendung(Schluessel());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
