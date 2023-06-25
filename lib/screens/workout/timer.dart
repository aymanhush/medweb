import 'dart:async';

import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int counter = 0;
  int round = 1;
  bool isCounting = false;
  late Timer _timer;

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the screen is disposed
    super.dispose();
  }

  void startCounting() {
    setState(() {
      isCounting = !isCounting; // Toggle the isCounting flag
      if (isCounting) {
        counter = 0;
        round = 1;
        _startTimer();
      } else {
        _timer.cancel(); // Stop the timer
      }
    });
  }

  void _startTimer() {
    const duration = Duration(seconds: 1);
    _timer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        counter++;

        if (counter > 10) {
          if (round >= 3) {
            timer.cancel();
            isCounting = false;
          } else {
            round++;
            counter = -5; // Set counter to -5 for the break
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.all(4),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index < round ? Colors.green : Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 200),
            if (counter < 0)
              Text(
                'Break: ${counter.abs()}',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              )
            else
              Text(
                isCounting ? 'Counter: $counter' : 'Finished',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: startCounting,
              child: Text(isCounting ? 'Stop Counting' : 'Start Counting'),
            ),
          ],
        ),
      ),
    );
  }
}
