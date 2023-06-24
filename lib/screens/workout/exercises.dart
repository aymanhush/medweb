import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercises_Screen extends StatefulWidget {
  const Exercises_Screen({Key? key}) : super(key: key);

  @override
  State<Exercises_Screen> createState() => _Exercises_ScreenState();
}

class _Exercises_ScreenState extends State<Exercises_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Exercises'),
        centerTitle: true,
      ),
      
    );
  }
}