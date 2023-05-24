import 'package:flutter/material.dart';

class Bmi_Screen extends StatefulWidget {
  const Bmi_Screen({super.key});

  @override
  State<Bmi_Screen> createState() => _Bmi_ScreenState();
}

class _Bmi_ScreenState extends State<Bmi_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),

    );
  }
}
