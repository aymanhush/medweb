
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

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
TextStyle get subHeadingStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode?Colors.grey[400]:Colors.grey
    )
  );
}
TextStyle get headingStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode?Colors.white:Colors.black
    )
  );
}
TextStyle get titleStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Get.isDarkMode?Colors.white:Colors.black
    )
  );
}
TextStyle get supTitleStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Get.isDarkMode?Colors.grey[100]:Colors.grey[600]
    )
  );
}