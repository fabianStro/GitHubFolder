import 'package:flutter/material.dart';

void main() {
  runApp(GalleryScreen());
}

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});
  int _currentPageIndex = 0;
  //rgb(102, 0, 31)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.0,
            title: Text('Gallery'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                _currentPageIndex = index;
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
                    Image(
                      image: AssetImage('assets/images/basketball_1.jpeg'),
                      height: 150,
                      width: 180,
                      fit: BoxFit.cover,
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
                    Image(image: AssetImage('assets/images/ski.jpeg'), height: 150, width: 180, fit: BoxFit.cover),
                    Text('Ski'),
                  ],
                ),
              ),
              Container(
                //padding: const EdgeInsets.all(8),
                color: Colors.teal[300],
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/bike.jpeg'), height: 150, width: 180, fit: BoxFit.cover),
                    Text('Bike'),
                  ],
                ),
              ),

              Container(
                //padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/running.jpeg'), height: 150, width: 180, fit: BoxFit.cover),
                    Text('Run'),
                  ],
                ),
              ),
              Container(
                //padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/tennis_1.jpeg'), height: 150, width: 180, fit: BoxFit.cover),
                    Text('Tennis'),
                  ],
                ),
              ),
              Container(
                //padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/soccer.jpeg'), height: 150, width: 180, fit: BoxFit.cover),
                    Text('Socccer'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
