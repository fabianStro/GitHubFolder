import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          title: Text('About Me'),
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
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Gallery'),
            //NavigationDestination(icon: Icon(Icons.browse_gallery), label: 'Deatail'),
            NavigationDestination(icon: Icon(Icons.person), label: 'About Me'),
          ],
        ), // NavigationBar
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: //Padding(
                //padding: EdgeInsets.only(left: 100.0, top: 30.0),
                //child: CircleAvatar(radius: 100, backgroundImage: AssetImage('assets/images/kaya.jpeg')),
                ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(100),
                    child: Image(image: AssetImage('assets/images/kaya.jpeg'), fit: BoxFit.cover),
                  ),
                ),
            /*    Text('Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach neuen Perspektiven und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, meine Leidenschaft und mein Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen.') */
          ),
        ),
      ),
    );
  }
}
