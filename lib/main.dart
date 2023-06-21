import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth.dart';
import 'package:flutter_application_1/screens/alarm_screen.dart';
import 'package:flutter_application_1/screens/articles_screen.dart';
import 'package:flutter_application_1/screens/bmi/bmi_screen.dart';
import 'package:flutter_application_1/screens/calorie_calculator/calorie_screen.dart';
import 'package:flutter_application_1/screens/feedback_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login-screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/quiz/quiz_screen.dart';
import 'package:flutter_application_1/screens/reset_password_screen.dart';
import 'package:flutter_application_1/screens/shop_screen.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';
import 'package:flutter_application_1/screens/workout_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff0d2b7a),
      ),
      //home: const Auth(),
      routes: {
        '/':(context) => const Auth(),
        'signupScreen':(context) => const SignupScreen(),
        'loginScreen':(context) => const LoginScreen(),
        'homeScreen':(context) => const HomeScreen(),
        'resetPasswordScreen':(context) => const ResetPasswordScreen(),
        'bmiScreen':(context) => const Bmi_Screen(),
        'workoutScreen':(context) => const Workout_Screen(),
        'calorieScreen':(context) => const Calorie_Screen(),
        'alarmScreen':(context) => const Alarm_Screen(),
        'articlesScreen':(context) => const Articles_Screen(),
        'shopScreen':(context) => const Shop_Screen(),
        'feedbackScreen':(context) => const Feedback_Screen(),
        'quizkScreen':(context) =>  QuizScreen(),

        

      },
    );
  }
}

