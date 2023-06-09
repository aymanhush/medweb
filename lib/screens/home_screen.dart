
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/screens/articles/articles_screen.dart';
import 'package:flutter_application_1/screens/medication_alarm/alarm_screen.dart';
import 'package:flutter_application_1/screens/bmi/bmi_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/screens/calorie_calculator/calorie_screen.dart';
import 'package:flutter_application_1/screens/feedback_screen.dart';
import 'package:flutter_application_1/screens/shop_screen.dart';
import 'package:flutter_application_1/screens/welcome/welcome_screen.dart';
import 'package:flutter_application_1/screens/workout/workout_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              const Text("Welcome", 
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(user.email!,
              style: TextStyle(fontSize: 16),
              ),
              ListTile(
                leading: 
                Icon(Icons.logout),
                title: Text('LogOut'),
                onTap: () {FirebaseAuth.instance.signOut();},
              ),
              ListTile(
                leading: 
                Icon(Icons.feedback),
                title: Text('Feedback'),
                 onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Feedback_Screen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0, 
        title: const Text('HOME'),
        centerTitle: true,
        titleTextStyle: 
        TextStyle(
          fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20, 
        ),
      ),
      
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox (
              height: 140,
              width: 400,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'WORKOUT',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: 
                      TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Workout_Screen()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox (
              height: 140,
              width: 400,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'BMI CALCULATOR',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: 
                      TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bmi_Screen()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox (
              height: 140,
              width: 400,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'CALORIE CALCULATOR',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: 
                      TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calorie_Screen()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox (
              height: 140,
              width: 400,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'MEDICATION ALARM',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: 
                      TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 26,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Alarm_Screen()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox (
              height: 140,
              width: 400,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'HEALTH TEST',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: 
                      TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox (
              height: 140,
              width: 400,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'ARTICLES',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: 
                      TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArticlesScreen()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SizedBox (
              height: 140,
              width: 400,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'SUPPLEMENTS SHOP',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: 
                      TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shop_Screen()),
                  );
                },
              ),
            ),
          ),
          
        ]
      )
    );
  }
} 