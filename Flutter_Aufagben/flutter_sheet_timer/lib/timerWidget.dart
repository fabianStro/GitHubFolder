import 'dart:async';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int _seconds = 0;
  bool _isRunnin = false;
  String _statusText = '';
  Timer? timer;

  final TextEditingController _minController = TextEditingController();
  final TextEditingController _secController = TextEditingController();

  Future<void> _startTimer() async {
    if (_isRunnin) return;

    final int min = int.tryParse(_minController.text) ?? 0;
    final int sec = int.tryParse(_secController.text) ?? 0;
    setState(() {
      _seconds = min * 60 + sec;
      _isRunnin = true;
      _statusText = 'Timer is runnin';
    });

    await _runCountdown();

    setState(() {
      _isRunnin = false;
      _statusText = 'Timer finished';
    });
  }

  Future<void> _runCountdown() async {
    while (_seconds > 0 && _isRunnin) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        _seconds--;
      });
    }
  }

  void _stopTimer() {
    setState(() {
      _isRunnin = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final minutes = _seconds ~/ 60;
    final seconds = _seconds % 60;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text('Timer App'),
          shape: Border(
            bottom: BorderSide(color: Colors.white),
            top: BorderSide(color: Colors.white),
          ), // Border der AppBar
          centerTitle: true,
        ), // AppBar
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                TextField(
                  controller: _minController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Minutes'),
                ), // TextField
                SizedBox(height: 10.0),
                TextField(
                  controller: _secController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Seconds'),
                ), // TextField
                SizedBox(height: 20.0),
                Text(
                  '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                  style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ), // Text
                SizedBox(height: 20.0),
                if (!_isRunnin)
                  ElevatedButton(onPressed: _startTimer, child: const Text('Timer start'))
                else
                  ElevatedButton(onPressed: _stopTimer, child: const Text('Timer stop')),
                SizedBox(height: 50),
                Text(
                  _statusText,
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ), // Text
              ], // Children
            ), // Column
          ), // Padding
        ), // Center
      ), // Scaffold
    ); // SafeArea
  }
}
