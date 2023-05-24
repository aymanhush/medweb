import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feedback_Screen extends StatefulWidget {
  const Feedback_Screen({super.key});

  @override
  State<Feedback_Screen> createState() => _Feedback_ScreenState();
}

class _Feedback_ScreenState extends State<Feedback_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Feedback'),
        centerTitle: true,
      ),
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
                  'Enter Your Feedback',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 25),          
                
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Feedback',
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
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius : BorderRadius.circular(25),
                      ), 
                      child: Center(child: Text('SENT',
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
              ],
            ),
          )  
        )
      )      
    );
  }
}
