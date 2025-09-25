import 'package:flutter/material.dart';
import 'package:flutter_application_test/aboutMe.dart';
import 'package:flutter_application_test/detail.dart';
import 'package:flutter_application_test/gallery.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  //int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/gallery',
      routes: {
        '/gallery': (context) => GalleryWidget(),
        '/detail': (context) => DetailWidget(),
        '/aboutMe': (context) => AboutMe(),
      },
    );
  }
}
