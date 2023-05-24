import 'package:flutter/material.dart';

class Test_Screen extends StatefulWidget {
  const Test_Screen({super.key});

  @override
  State<Test_Screen> createState() => _Test_ScreenState();
}

class _Test_ScreenState extends State<Test_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Health Test'),
        centerTitle: true,
      ),

    );
  }
}
