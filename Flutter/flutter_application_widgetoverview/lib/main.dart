import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> colors = ['blue', 'red', 'green'];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          toolbarHeight: 100.0,
          centerTitle: true,
          title: Text('Aufgabe 1', style: TextStyle(color: Colors.white, fontSize: 50.0)),
        ), // AppBar
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50.0, left: 25.0),
                  child: Titles(text: 'Hello App Akademie', style: 'color'),
                ), // Text
              ], // children Row 1
            ), // Row Text1, // Row1
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0, left: 25.0, bottom: 20.0),
                  child: Titles(text: 'Hello App Akademie', style: 'color'),
                ), // Text
              ], // children Row 2
            ), // ROW2
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.green,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.blue,
                ),
              ], // children Row 3
            ), // Row3
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.green,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.blue,
                ),
              ], // children Row 4
            ), // Row4
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.0, left: 40.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.red,
                ), // Container 1
                Container(
                  margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.green,
                ), // Container 2
              ], // children Row 5
            ), // Row5
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.0, left: 40.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.red,
                ), // Container 3
                Container(
                  margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  color: Colors.green,
                ), // Container 4
              ], // children Row 6
            ), // Row6
          ], // children Column
        ), // Column
      ), // Scaffold
    ); // MaterialApp
  }
}

class Titles extends StatelessWidget {
  const Titles({super.key, this.text, this.style});

  final String? text;
  final String? style;

  @override
  Widget build(BuildContext context) {
    return Text(text ?? 'None', style: TextStyle(color: Colors.blue));
  }
}

/* class Boxes extends StatelessWidget {
  const Boxes({super.key, this.height, this.width});

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ;
  }
} */
