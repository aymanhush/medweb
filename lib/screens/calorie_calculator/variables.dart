import 'package:flutter/material.dart';

/////COLOUR VARIABLES
const primary_Color = Color(0xffFFBC0E);
const backgroundColor = Color(0xFFDB0006);
const activeCardColor = primary_Color;
const inactiveCardColor = Color(0xFFFFD982);
/////////////////////

const adviceTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: Colors.lightBlueAccent,
);

Image assetImage(String assetName, double height, double width) {
  return Image.asset(
    'images/$assetName',
    height: height,
    width: width,
  );
}

List<BoxShadow> boxShadow = [
  BoxShadow(
      color: Colors.black.withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 2,
      offset: Offset(3, 3))
];

///////////////BURGER ITEM COUNTERS
int bigMacCount = 0;
int cheeseBurgerCount = 0;
int chickenBurgerCount = 0;
int quarterPounderCount = 0;

///////////////SIDES COUNTERS
int largeFriesCount = 0;
int chickenNuggetCount = 0;
int largeCokeCount = 0;
int softServeCount = 0;
// ///////////////

//////////////////Reset button

void reset() {
  bigMacCount = 0;
  cheeseBurgerCount = 0;
  chickenBurgerCount = 0;
  quarterPounderCount = 0;
  largeFriesCount = 0;
  chickenNuggetCount = 0;
  largeCokeCount = 0;
  softServeCount = 0;
}
