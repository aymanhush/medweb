import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/medication_alarm/services/theme_services.dart';

class Alarm_Screen extends StatefulWidget {
  const Alarm_Screen({super.key});

  @override
  State<Alarm_Screen> createState() => _Alarm_ScreenState();
}

class _Alarm_ScreenState extends State<Alarm_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      
      body: Column(
        children: [

        ]
      ),

    );
  }
  _appBar(){
    return AppBar(
      leading: GestureDetector(
        onTap:(){
          ThemeService().switchTheme();
        },
        
        child: Icon(Icons.nightlight_round,size: 20,), 
      ),
      backgroundColor: Theme.of(context).primaryColor,

      actions: [
        BackButton(
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
