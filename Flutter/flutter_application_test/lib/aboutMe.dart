import 'package:flutter/material.dart';

void main() {
  runApp(AboutMe());
}

class AboutMe extends StatelessWidget {
  AboutMe({super.key});
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.0,
            title: Text('About Me'),
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
          body: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 100.0, top: 30.0),
              child: CircleAvatar(radius: 100, backgroundImage: AssetImage('assets/images/kaya.jpeg')),
            ),

            /* child: ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(100),
                child: Image(
                  image: AssetImage('assets/images/kaya.jpeg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ), */
            /*    Text('Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach neuen Perspektiven und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, meine Leidenschaft und mein Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen.') */
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
