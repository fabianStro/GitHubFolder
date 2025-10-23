//import 'dart:async';
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class StopwatchWidget extends StatefulWidget {
  const StopwatchWidget({super.key});

  @override
  State<StopwatchWidget> createState() => _StopwatchWidgetState();
}

class _StopwatchWidgetState extends State<StopwatchWidget> {
  late Stopwatch _stopwatch;
  late int doubleDigit;
  bool _isRunnin = false;
  String _time = '00:00:00:00';

  @override
  void initState() {
    doubleDigit = 0;
    super.initState();
    _stopwatch = Stopwatch();
  }

  String _formatTime(Duration duration) {
    //print(doubleDigit);
    String twoDigits(doubleDigit) => doubleDigit.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final milliseconds = twoDigits(duration.inMilliseconds.remainder(100));
    return "$hours:$minutes:$seconds:$milliseconds";
  }

  Future<void> _runStopwatch() async {
    while (_isRunnin) {
      await Future.delayed(const Duration(milliseconds: 100));
      if (_stopwatch.isRunning) {
        setState(() {
          _time = _formatTime(_stopwatch.elapsed);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey));
    const SnackBar snackbarStart = SnackBar(content: Text('Stopwatch started'), showCloseIcon: true);
    const SnackBar snackbarStop = SnackBar(content: Text('Stopwatch stopped'), showCloseIcon: true);
    const SnackBar snackbarReset = SnackBar(content: Text('Stopwatch reseted'), showCloseIcon: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text('Stopwatch App'),
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
                Text(_time, style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 25),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackbarStart);
                      if (!_stopwatch.isRunning) {
                        setState(() {
                          _isRunnin = true;
                          _stopwatch.start();
                        });
                        _runStopwatch();
                      }
                    },
                    style: buttonStyle,
                    child: Text('Stopwatch start', style: TextStyle(color: Colors.white)),
                  ), // ElevatedButton Start
                ), // SizedBox

                SizedBox(height: 10.0),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackbarStop);
                      setState(() {
                        _stopwatch.stop();
                      });
                    },
                    style: buttonStyle,
                    child: Text('Stopwatch stop', style: TextStyle(color: Colors.white)),
                  ), // ElevatedButton Stop
                ), // SizedBox

                SizedBox(height: 10.0),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackbarReset);
                      setState(() {
                        _stopwatch.reset();
                        _time = '00:00:00:00';
                      });
                    },
                    style: buttonStyle,
                    child: Text('Reset', style: TextStyle(color: Colors.white)),
                  ), // ElevatedButton Reset
                ), // SizedBox
              ],
            ), // Column
          ), // Padding
        ), // Center
      ), // Scaffold
    ); // SafeArea
  }
}
