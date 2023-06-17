import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText({
    super.key, 
    required this.title, 
    required this.fontSize, 
    required this.color, 
    required this.fontWeight,
  });

  final String title;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
