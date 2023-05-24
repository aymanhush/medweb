import 'package:flutter/material.dart';

class Workout_Screen extends StatefulWidget {
  const Workout_Screen({super.key});

  @override
  State<Workout_Screen> createState() => _Workout_ScreenState();
}

class _Workout_ScreenState extends State<Workout_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Workout'),
        centerTitle: true,
      ),

    );
  }
}
