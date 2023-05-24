import 'package:flutter/material.dart';

class Articles_Screen extends StatefulWidget {
  const Articles_Screen({super.key});

  @override
  State<Articles_Screen> createState() => _Articles_ScreenState();
}

class _Articles_ScreenState extends State<Articles_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Articles'),
        centerTitle: true,
      ),

    );
  }
}
