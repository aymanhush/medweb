import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/workout/exercises.dart';
import 'package:get/get.dart';

class Workout_Screen extends StatefulWidget {
  const Workout_Screen({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          ListTile(
            title: const Text('Workout 1'),
            onTap: () 
               => Get.to(Exercises_Screen()),
          ),
          ListTile(
            title: const Text('Workout 2'),
            onTap: () 
               => Get.to(Exercises_Screen()),
          ),
          ListTile(
            title: const Text('Workout 3'),
            onTap: () 
               => Get.to(Exercises_Screen()),
          ),
          ListTile(
            title: const Text('Workout 4'),
            onTap: () 
            => Get.to(Exercises_Screen()),
          ),
        ],
      ),
    );
  }
}
