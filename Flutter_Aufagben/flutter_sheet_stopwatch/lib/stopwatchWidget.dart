//import 'dart:async';
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
    super.initState();
    _stopwatch = Stopwatch();
  }

  String _formatTime(Duration duration) {
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
                      if (!_stopwatch.isRunning) {
                        setState(() {
                          _isRunnin = true;
                          _stopwatch.start();
                        });
                        _runStopwatch();
                      }
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                    child: Text('Timer start', style: TextStyle(color: Colors.white)),
                  ),
                ), // ElevatedButton Start

                SizedBox(height: 10.0),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _stopwatch.stop();
                      });
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                    child: Text('Timer stop', style: TextStyle(color: Colors.white)),
                  ),
                ), // ElevatedButton Stop

                SizedBox(height: 10.0),
                SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _stopwatch.reset();
                        _time = '00:00:00';
                      });
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                    child: Text('Reset', style: TextStyle(color: Colors.white)),
                  ),
                ), // ElevatedButton Reset
              ],
            ), // Column
          ), // Padding
        ), // Center
      ), // Scaffold
    ); // SafeArea
  }
}
