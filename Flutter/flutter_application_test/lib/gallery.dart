import 'package:flutter/material.dart';

class GalleryWidget extends StatefulWidget {
  const GalleryWidget({super.key});

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          title: Text(
            'Gallery',
            style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 102, 0, 31),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
              if (index == 0) {
                Navigator.pushNamed(context, '/gallery');
              } else if (index == 1) {
                Navigator.pushNamed(context, '/aboutMe');
              }
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Gallery'),
            //NavigationDestination(icon: Icon(Icons.browse_gallery), label: 'Deatail'),
            NavigationDestination(icon: Icon(Icons.person), label: 'About Me'),
          ],
        ), // NavigationBar */
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              //padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: 0);
                    },
                    child: Image(
                      image: AssetImage('assets/images/basketball_1.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Bunter Basketball'),
                ],
              ),
            ),
            Container(
              //padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: 1);
                    },
                    child: Image(
                      image: AssetImage('assets/images/ski.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Adrenalin pur!'),
                ],
              ),
            ),
            Container(
              //padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: 2);
                    },
                    child: Image(
                      image: AssetImage('assets/images/bike.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Achtung Kurve'),
                ],
              ),
            ),

            Container(
              //padding: const EdgeInsets.all(8),
              color: Colors.teal[500],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: 3);
                    },
                    child: Image(
                      image: AssetImage('assets/images/running.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Runners High'),
                ],
              ),
            ),
            Container(
              //padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: 4);
                    },
                    child: Image(
                      image: AssetImage('assets/images/basketball_2.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Swish'),
                ],
              ),
            ),

            Container(
              //padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: 5);
                    },
                    child: Image(
                      image: AssetImage('assets/images/tennis_1.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Ball Game'),
                ],
              ),
            ),

            Container(
              //padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: 6);
                    },
                    child: Image(
                      image: AssetImage('assets/images/tennis_2.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Tennis'),
                ],
              ),
            ),

            /* Container(
              //padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail', arguments: 7);
                    },
                    child: Image(
                      image: AssetImage('assets/images/soccer.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Socccer'),
                ],
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
