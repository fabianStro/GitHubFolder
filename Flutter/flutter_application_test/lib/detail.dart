import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,

          title: Text('Details'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 102, 0, 31),
        ),
        body: Column(
          children: [
            //Image.network('assets/images/basketball_1.jpeg', alignment: Alignment.center),
            Image(image: AssetImage('assets/images/basketball_1.jpeg')),
            Text(
              'Bunter Basketball',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey),
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ein farbenfrohes Basketballfeld im Freien. Im Zentrum steht ein Basketballkorb, dessen weißes Netz im leichten Wind schaukelt. Die Farben des Spielfelds leuchten unter der warmen Abendsonne. Vor vielen Jahren, während eines Sommerabends, trafen sich hier Freunde zu einem unvergesslichen Spiel, bei dem die Sieger den Sonnenuntergang bejubelten.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
