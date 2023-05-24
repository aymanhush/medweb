import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login-screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/reset_password_screen.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff0d2b7a),
      ),
      routes: {
        '/':(context) => const Auth(),
        'loginScreen':(context) => const LoginScreen(),
        'homeScreen':(context) => const HomeScreen(),
        'resetPasswordScreen':(context) => const ResetPasswordScreen(),
        'signupScreen':(context) => const SignupScreen(),


      },
    );
  }
}

