import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DogShowWidget extends StatefulWidget {
  const DogShowWidget({super.key});

  @override
  State<DogShowWidget> createState() => _DogShowWidgetState();
}

class _DogShowWidgetState extends State<DogShowWidget> {
  String _dog = 'Show Dog';

  @override
  void initState() {
    super.initState();
    getDogData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(_dog),
          centerTitle: true,
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
        ), // AppBar
        body: Row(
          children: [
            FutureBuilder(
              future: getDogData(),
              builder: (context, snapshot) {
                final list = snapshot.data;
                final text = list?.join(",") ?? '';
                return Text(text);
              },
            ), // FutureBuilder
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 90.0),
              child: DropdownMenu(
                label: Text(
                  'Colors',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ), // Text
                width: 200.0,
                onSelected: (dog) {
                  if (dog != null) {
                    setState(() {
                      _dog = 'Bal Blub';
                    });
                  }
                },
                dropdownMenuEntries: <DropdownMenuEntry<Color>>[
                  DropdownMenuEntry(value: Colors.red, label: 'Red'),
                  DropdownMenuEntry(value: Colors.blue, label: 'Blue'),
                  DropdownMenuEntry(value: Colors.green, label: 'Green'),
                ], // DropdownMenuEntry<Color>>[]
              ), // DropdownMenu
            ), // Padding
            //Text(),
          ],
        ), // Row
      ), // Scaffold
    ); // SafeArea
  }
}

Future<List> getDogData() async {
  const uriString = 'https://dog.ceo/api/breeds/list/all';
  final response = await http.get(Uri.parse(uriString));
  List<String> dogList = [];

  final dogData = jsonDecode(response.body);
  final dogJsonList = dogData[''];

  for (final dog in dogJsonList) {
    dogList.add(dog['message']);
  }
  return dogList;
}
