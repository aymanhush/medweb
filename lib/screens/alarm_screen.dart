import 'package:flutter/material.dart';

class Alarm_Screen extends StatefulWidget {
  const Alarm_Screen({super.key});

  @override
  State<Alarm_Screen> createState() => _Alarm_ScreenState();
}

class _Alarm_ScreenState extends State<Alarm_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Medication Alarm'),
        centerTitle: true,
      ),

    );
  }
}
