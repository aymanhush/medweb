import 'package:flutter/material.dart';

class Shop_Screen extends StatefulWidget {
  const Shop_Screen({super.key});

  @override
  State<Shop_Screen> createState() => _Shop_ScreenState();
}

class _Shop_ScreenState extends State<Shop_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Supplements Shop'),
        centerTitle: true,
      ),

    );
  }
}
