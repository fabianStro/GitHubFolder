import 'package:flutter/material.dart';
import 'package:flutter_sheet_timer/timerWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer Project',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Arial'),
      initialRoute: '/timer',
      routes: {
        '/timer': (context) => TimerWidget(),
        /*'/registry': (context) => RegistryWidget(),
        '/start': (context) => StartScreenWidget(),
        '/detail': (context) => DetailWidget(), */
      }, // routes
    ); // MaterialApp
  }
}
