import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.grey);
  final TextStyle _titleTextStyle = TextStyle(fontSize: 50.0, letterSpacing: 4.0, fontFamily: 'Audiowide');
  final TextStyle _buttonTextStyle = TextStyle(color: Colors.white, fontFamily: 'Arial');
  final TextStyle _registryTextStyle = TextStyle(color: Colors.grey[400], fontFamily: 'Arial');
  final TextStyle _loginTextStyle = TextStyle(fontSize: 28.0, letterSpacing: 2.0, fontFamily: 'Arial');

  final String _title = 'TVPG';
  final String _username = 'Reaper';
  final String _password = 'root';

  late String formatString;
  // final double _sendBoxWidth = 150.0;
  // final double _borderRadius = 25.0;
  // final double _toolbarHeight = 100.0;
  // final bool _isTrue = true;
  // final Color _whiteColor = Colors.white;

  void _loginCheck(BuildContext context) {
    formatString = _usernameController.text.replaceAll(' ', '');
    if (formatString == _username && _passwordController.text == _password) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.black,
          showCloseIcon: false,
          closeIconColor: Colors.white,
          content: Text(
            'Welcome $formatString. Login successful !',
            style: const TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ), // SnackBar
      );
      Navigator.pushNamed(context, '/start', arguments: formatString);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: Colors.black,
          showCloseIcon: false,
          closeIconColor: Colors.white,
          content: Center(
            child: Text('Incorrect Username or Password !', style: TextStyle(fontSize: 20.0, color: Colors.white)),
          ), // Center
        ), // SnackBar
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 100.0,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
            top: BorderSide(color: Colors.white, width: 2.0),
          ), // Border
          centerTitle: true,
          title: Text(_title, style: _titleTextStyle),
        ), // AppBar
        body: Padding(
          padding: const EdgeInsets.only(left: 60.0, right: 60.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Text('LOGIN', style: _loginTextStyle),
              ), // Padding
              SizedBox(height: 20.0),
              TextField(
                controller: _usernameController,
                obscureText: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0, left: 10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Username',
                ), // InputDecoration
              ), // TextField
              SizedBox(height: 20.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16.0, left: 10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Password',
                ), // InputDeecoration
              ), // TextField
              SizedBox(height: 25.0),
              SizedBox(
                width: 150.0,
                child: ElevatedButton(
                  style: _buttonStyle,
                  onPressed: () {
                    _loginCheck(context);
                  },
                  child: Text('Login', style: _buttonTextStyle), // Text
                ), // ElevatedButtton
              ), // SizedBox
              SizedBox(height: 15.0),
              Align(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/registry');
                  },
                  child: Text('Registration', style: _registryTextStyle),
                ), // GestureDetector
              ), // Align
            ], // Children
          ), // Column
        ), // Padding
      ), // Scaffold
    ); // SafeArea
  }
}
