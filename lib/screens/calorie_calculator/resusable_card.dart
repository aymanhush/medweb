import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/calorie_calculator/variables.dart';
import 'dart:core';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final IconData foodIcon;
  final String iconText;
  final VoidCallback onTap;

  ReusableCard(
      {required this.cardColor,
      required this.foodIcon,
      required this.iconText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: cardColor,
            boxShadow: boxShadow),
        height: 130,
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                foodIcon,
                size: 65,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                iconText,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ));
  }
}