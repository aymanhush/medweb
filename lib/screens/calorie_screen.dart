import 'package:flutter/material.dart';

class Calorie_Screen extends StatefulWidget {
  const Calorie_Screen({super.key});

  @override
  State<Calorie_Screen> createState() => Calorie__ScreenState();
}

class Calorie__ScreenState extends State<Calorie_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Calorie Calculator'),
        centerTitle: true,
      ),

    );
  }
}
