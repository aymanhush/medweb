
import 'package:flutter/material.dart';

const Color bluishClr = Color(0xff0d2b7a);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xff121212);
Color darkHeaderClr = Color(0xFF424242);


class Themes extends StatelessWidget {
  const Themes({super.key});
  static final light= ThemeData(
     primaryColor: primaryClr,
     brightness: Brightness.light
  );
  static final dark= ThemeData(
     primaryColor: darkGreyClr,
     brightness: Brightness.dark
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}