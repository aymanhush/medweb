import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login-screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future Passwordreset() async{
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text ('Password reset link sent! Check your Email'),
        );
      });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text (e.message.toString()),
        );
      });
    }
  }

  void signin() {
    Navigator.of(context).pushReplacementNamed('loginScreen');
  }

  void openResetPasswordScreen() {
    Navigator.of(context).pushReplacementNamed('resetPasswordScreen');
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
                SizedBox(height: 40),


                Text(
                  'Enter Your Email and we will send you a password reset link',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 25),

          
                //Resent Email Textfield
          
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

                SizedBox(height: 25),

                //buttom

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: Passwordreset,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius : BorderRadius.circular(25),
                      ), 
                      child: Center(child: Text('RESET PASSWORD',
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

                SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          },
                          ),
                          );
                        },
                        child: Text('<- Go Back', 
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          )  
        )
      )      
    );
  }
}