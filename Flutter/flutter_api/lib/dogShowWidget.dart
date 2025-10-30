import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class DogShowWidget extends StatefulWidget {
  const DogShowWidget({super.key});

  @override
  State<DogShowWidget> createState() => _DogShowWidgetState();
}

class _DogShowWidgetState extends State<DogShowWidget> {
  final String _dog = 'Show Dog';

  @override
  void initState() {
    super.initState();
    getDogData();
  }

  @override
  Widget build(BuildContext context) {
    var expanded1 = Expanded(
      child: FutureBuilder(
        future: getDogData(),
        builder: (context, snapshot) {
          final List<String> list = snapshot.data ?? [];
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Text(
                  list[index].toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                ), // Text
              ); // ListTile
            },
          ); // ListView.builder
        },
      ), // FutureBuilder
    ); // Expanded
    // ############################################################################
    var expanded2 = Expanded(
      child: FutureBuilder(
        future: getRandomDogImage(),
        builder: (context, snapshot) {
          final String content = snapshot.data ?? ' ';
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.network(content, width: 300, height: 300)],
          ); // Row
        },
      ), // FutureBuilder
    ); // Expanded
    // ############################################################################################
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
        body: Column(
          children: [
            expanded1,
            SizedBox(height: 10.0),
            Divider(color: Colors.white, thickness: 2),
            SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                expanded2;
                setState(() {});
              },
              child: const Text('Push me'),
            ),
          ],
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}

Future<List<String>> getDogData() async {
  const String uriString = 'https://dog.ceo/api/breeds/list/all';
  final response = await http.get(Uri.parse(uriString));
  List<String> dogList = [];
  final dogData = jsonDecode(response.body);
  final Map dogJsonMap = dogData['message'];
  for (final dog in dogJsonMap.keys) {
    dogList.add(dog);
  }
  return dogList;
}

Future<String> getRandomDogImage() async {
  const String uriRandomDogImage = 'https://dog.ceo/api/breeds/image/random';
  final responseRandomImage = await http.get(Uri.parse(uriRandomDogImage));
  final data = jsonDecode(responseRandomImage.body);
  final randomImageData = data['message'];
  return randomImageData;
}




 //Image.network(getRandomDogImage() as String),
      /*  child: DropdownMenu(
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
                ), // DropdownMenu */
