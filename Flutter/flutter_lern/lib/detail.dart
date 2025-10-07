import 'package:flutter/material.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({super.key});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    final _argMap = ModalRoute.of(context)!.settings.arguments as Map;
    var _elevatedButtonForm = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pink,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),
        minimumSize: const Size(400, 50),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Text('Add to orfer for ' + _argMap['price'], style: TextStyle(fontSize: 20.0, color: Colors.white)),
    );
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrund
          // SizedBox.expand(child: Image.asset('assets/images/background/bg_mainscreen.png', fit: BoxFit.cover)),
          /*  Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                /* begin: Alignment.topCenter,
                end: Alignment.bottomCenter, */
              ),
            ),
          ), */
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_argMap['picture']),
                // fit: BoxFit.cover,
                /* opacity: 20.0, */
              ),
            ),
          ),

          Center(
            child: Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black.withOpacity(0.6), Colors.transparent]),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _argMap['name'],
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      _argMap['description'],
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    Text(
                      _argMap['price'],
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ingredients', style: TextStyle(fontSize: 16, color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Text('Reviews', style: TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 800.0, left: 20.0),
            child: Text(
              'Small | Medium | Large',
              style: TextStyle(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w100),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 820.0, left: 15.0, right: 15.0),
              child: Row(children: [_elevatedButtonForm]),
            ),
          ),
        ],
      ),
    );
  }
}
