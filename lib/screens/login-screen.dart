import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/reset_password_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _emailController =  TextEditingController();
  final _passwordController =  TextEditingController();


  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim(),);
  }

  void openResetPasswordScreen() {
    Navigator.of(context).pushReplacementNamed('resetPasswordScreen');
  }

  void openSignupScreen() {
    Navigator.of(context).pushReplacementNamed('signupScreen');
  }


  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/logoflut.png',
                height: 130,),
                SizedBox(height: 20),
          
                //Title
          
                Text(
                  'SIGN IN',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 35, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
          
                //Email Textfield
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: (15)),

                  //Password Textfield
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return ResetPasswordScreen();
                          },
                          ),
                          );
                        },
                        child: Text('Forget Passeord?', 
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
          
                SizedBox(height: 20),
          
                //Sign in Button
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: signin,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius : BorderRadius.circular(30),
                      ), 
                      child: Center(child: Text('SIGN IN',
                      style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      ),
                      ),
                      ),
                    ),
                  ),
                ),
          
                SizedBox(height: 25),
          
                //Text : Sign up
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not yet a member ? ', 
                    style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: openSignupScreen,
                      child: Text('Sign up now',
                       style: GoogleFonts.robotoCondensed(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}