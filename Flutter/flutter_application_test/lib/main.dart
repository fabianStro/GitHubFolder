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
        body: SafeArea(
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
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return BoxClass(title: "Element $index", description: "Das ist Beschreibung für Element $index");
                  },
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

class BoxClass extends StatelessWidget {
  final String title;
  final String description;

  const BoxClass({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title), Text(description)]),
    );
  }
}
