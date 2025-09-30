import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background/bg_startscreen.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              /* Image.asset('assets/images/graphics/cupcake_chick.png')
                 alignment: Alignment.centerRight, */
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/graphics/cupcake_chick.png'),
                  // fit: BoxFit.contain,
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/details/snach_snack.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
            ),
            Container(
              child: Text(
                'Feeling Snackish Today?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                  //shadows: [Shadow(color: Colors.black.withOpacity(0.5), offset: Offset(2, 2), blurRadius: 4)],
                ),
              ),
              //alignment: Alignment.topCenter,
              //padding: EdgeInsets.only(top: 100.0),
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 50.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/choose');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: Size(200, 40),
                  alignment: Alignment.center,
                  // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                ),
                child: Text('Order Now', style: TextStyle(fontSize: 12.0, letterSpacing: 2, color: Colors.white)),
              ),
            ),
          ], // children
        ),
      ),
    );
  }
}
