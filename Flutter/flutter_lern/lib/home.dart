import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrund
          SizedBox.expand(child: Image.asset('assets/images/background/bg_startscreen.png', fit: BoxFit.cover)),

          // Cupcake Chick
          Positioned(top: 150, left: 40, child: Image.asset('assets/images/graphics/cupcake_chick.png')),

          // Snack Overlay
          Positioned(
            top: 470,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/details/snack_snack.png', fit: BoxFit.contain),
          ),
          Positioned(
            top: 600,
            left: 45,
            child: Container(
              width: 340,
              height: 208,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black.withOpacity(0.6), Colors.transparent]),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    Text(
                      'Feeling Snackish Today?\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      'Explore Angi\'s most popular snack selection and get instantly happy\n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Align(
                      /* alignment: Alignment.bottomCenter, */
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/choose');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: Size(200, 40),
                        ),
                        child: Text(
                          'Order Now',
                          style: TextStyle(fontSize: 16.0, letterSpacing: 2, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
