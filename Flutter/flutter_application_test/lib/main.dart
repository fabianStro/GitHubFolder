import 'package:flutter/material.dart';

void main() {
  runApp(Aufg_1_Flutter5());
}

class Aufg_1_Flutter5 extends StatelessWidget {
  const Aufg_1_Flutter5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                flex: 20,
                child: Center(
                  child: Text("Willkommen zur App!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
              Expanded(
                flex: 60,
                child: Image.network(
                  'https://www.animeclick.it/immagini/personaggio/Akeno_Himejima/cover/14562-Akeno_Himejima-foto.jpg',
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                ),
              ),
              Expanded(
                flex: 20,
                child: Center(
                  child: Text("Diese App ist ein Übungsprojekt", style: TextStyle(fontFamily: 'Audiowide')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
