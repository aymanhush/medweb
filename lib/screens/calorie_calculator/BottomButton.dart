import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/calorie_calculator/variables.dart';

class BottomButton extends StatelessWidget {
  var onPressed;
  String text;

  BottomButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: boxShadow,
            color: Color(0xff0d2b7a),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color:Colors.white),
        ),
        alignment: Alignment.center,
        height: 60,
        margin: EdgeInsets.only(bottom: 8),
      ),
    );
  }
}