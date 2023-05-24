import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController =  TextEditingController();
  final _passwordController =  TextEditingController();
  final _confirmpasswordController = TextEditingController();

  Future signUp() async {
    if(passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim(),);
      Navigator.of(context).pushNamed('/');
    }
  }
  
  bool passwordConfirmed(){
    if (_passwordController.text.trim() == 
    _confirmpasswordController.text.trim()) {
      return true;
    } else{
      return false;
    }
  }

  void signin() {
    Navigator.of(context).pushReplacementNamed('loginScreen');
  }

  void openSignupScreen() {
    Navigator.of(context).pushReplacementNamed('signupScreen');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
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
                height: 150,),
                SizedBox(height: 25),
          
                //Title
          
                Text(
                  'SIGN UP',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25,),
          
                //Email Textfield
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
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
                SizedBox(height: 10,),
          
                //Password Textfield
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
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
          
                SizedBox(height: 10),

                //Confirm Password Textfield
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _confirmpasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
                        ),
                      ),
                    ),
                  ),
                ),
          
                SizedBox(height: 15),
          
                //Sign in Button
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    child: Container(
                      onTap: signUp,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius : BorderRadius.circular(12),
                      ), 
                      child: Center(child: Text('Sign Up',
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
                    Text('Allready a member ? ', 
                    style: GoogleFonts.robotoCondensed(
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: signin,
                      child: Text('Sign in here',
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