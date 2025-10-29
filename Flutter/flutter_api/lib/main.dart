import 'package:flutter/material.dart';
import 'package:flutter_api/dogShowWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Arial'),
      /* theme: ThemeData(fontFamily: 'Arial'), */
      initialRoute: '/home',
      routes: {
        '/home': (context) => DogShowWidget(),
        /*'/registry': (context) => RegistryWidget(),
        '/start': (context) => StartScreenWidget(),
        '/detail': (context) => DetailWidget(),
        '/profile': (cont ext) => ProfileWidget(),*/
      }, // routes
    ); // MaterialApp
  }
}
