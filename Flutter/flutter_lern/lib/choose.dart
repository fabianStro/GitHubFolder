import 'package:flutter/material.dart';

class ChooseWidget extends StatefulWidget {
  const ChooseWidget({super.key});

  @override
  State<ChooseWidget> createState() => _ChooseWidgetState();
}

class _ChooseWidgetState extends State<ChooseWidget> {
  //String pads = 'top: 10.0, left: 20';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background/bg_mainscreen.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            // Title Text
            Padding(
              padding: EdgeInsets.only(top: 100.0, left: 20.0),
              child: Text(
                'Choose Your Favorite Snack',
                style: const TextStyle(fontSize: 34.0, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20), // spacing from top
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          //minimumSize: const Size(200, 0),
                        ),
                        child: const Text(
                          'All Categories',
                          style: TextStyle(fontSize: 12.0, letterSpacing: 2, color: Colors.black),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20), // spacing from top und left
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          //minimumSize: const Size(200, 0),
                        ),
                        child: const Text(
                          'Salty',
                          style: TextStyle(fontSize: 12.0, letterSpacing: 2, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20), // spacing from top und left
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          //minimumSize: const Size(200, 0),
                        ),
                        child: const Text(
                          'Sweet',
                          style: TextStyle(fontSize: 12.0, letterSpacing: 2, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20), // spacing from top und left
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          //minimumSize: const Size(200, 0),
                        ),
                        child: const Text(
                          'Desert',
                          style: TextStyle(fontSize: 12.0, letterSpacing: 2, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 360,
              // width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Angi\'s Yummy Burger',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Image.asset('assets/images/graphics/star.png', height: 35, width: 35),
                        //Text('4.8', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Delish vegan Burger that tastes like heaven',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      '\$13.99',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ], // children innerBox
                ),
              ),
            ),
            //#############################################################################
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //########################## Mogli ############################################
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20), // spacing from top
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.purple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 300,
                      width: 230,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/graphics/cupkake_cat.png', fit: BoxFit.cover, height: 160),
                              SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Mogli\'s Cup',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Strawberry ice cream',
                                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$8.99',
                                    style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  //Image.asset('assets/images/graphics/heart.jpg', height: 10, width: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //########################## Balu #############################################
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20), // spacing from top
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.purple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 300,
                      width: 230,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/graphics/icecream.png', fit: BoxFit.cover, height: 160),
                              SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Balu\'s Cup',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Pistachio ice cream',
                                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$8.99',
                                    style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  //Image.asset('assets/images/graphics/heart.jpg', height: 35, width: 35),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //########################## David ############################################
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20), // spacing from top
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.purple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 300,
                      width: 230,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/graphics/icecream_stick.png', fit: BoxFit.cover, height: 160),
                              SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Smiling David',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Ice cream on a stick',
                                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$3.99',
                                    style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  //Image.asset('assets/images/graphics/heart.jpg', height: 35, width: 35),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //########################## Cone #############################################
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20), // spacing from top
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.purple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 300,
                      width: 230,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/graphics/icecream_cone.png', fit: BoxFit.cover, height: 160),
                              SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Kai in a Cone',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Ice cream in a cone',
                                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$3.99',
                                    style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  //Image.asset('assets/images/graphics/heart.jpg', height: 35, width: 35),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //#############################################################################
                ],
              ),
            ),
          ], // children
        ),
      ),
    );
  }
}
