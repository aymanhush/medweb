import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/calorie_calculator/variables.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/screens/calorie_calculator/resusable_card.dart';
import 'package:flutter_application_1/screens/calorie_calculator/burgerMenu.dart';
import 'package:flutter_application_1/screens/calorie_calculator/sidesMenu.dart';
import 'package:flutter_application_1/screens/calorie_calculator/BottomButton.dart';
import 'package:flutter_application_1/screens/calorie_calculator/Calculator_Brain.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/calorie_calculator/resultsPage.dart';

class Calorie_Screen extends StatefulWidget {
  const Calorie_Screen({super.key});

  @override
  State<Calorie_Screen> createState() => Calorie__ScreenState();
}

class Calorie__ScreenState extends State<Calorie_Screen> {
  FoodCategory selectedCategory = FoodCategory.burger;

   @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Calories Calculator'),
        centerTitle: true,
      ),
      body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, top: 4, bottom: 10),
                  child: ReusableCard(
                    cardColor: selectedCategory == FoodCategory.burger
                        ? activeCardColor
                        : inactiveCardColor,
                    foodIcon: FontAwesomeIcons.hamburger,
                    iconText: 'Burgers',
                    onTap: () {
                      setState(() {
                        selectedCategory = FoodCategory.burger;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 4, bottom: 10),
                  child: ReusableCard(
                    cardColor: selectedCategory == FoodCategory.sides
                        ? activeCardColor
                        : inactiveCardColor,
                    foodIcon: FontAwesomeIcons.drumstickBite,
                    iconText: 'Sides',
                    onTap: () {
                      setState(() {
                        selectedCategory = FoodCategory.sides;
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: boxShadow),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child:
                    // BurgerMenu()
                    selectedCategory == FoodCategory.burger
                        ? BurgerMenu()
                        : sidesMenu(),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: BottomButton(
                  text: 'Total Calories',
                  onPressed: () {
                    setState(() {
                      //navigate to second page
                      CalculatorBrain calc = CalculatorBrain(
                          bigMacCount: bigMacCount,
                          cheeseBurgerCount: cheeseBurgerCount,
                          chickenBurgerCount: chickenBurgerCount,
                          quarterPounderCount: quarterPounderCount,
                          largeFriesCount: largeFriesCount,
                          chickenNuggetCount: chickenNuggetCount,
                          largeCokeCount: largeCokeCount,
                          softServeCount: softServeCount);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultsPage(
                                    calorieSum: calc.calculateCalories(),
                                    resultText: calc.displayMessage(),
                                  )));    
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: BottomButton(
                    onPressed: () {
                      setState(() {
                        reset();
                      });
                    },
                    text: 'Reset'),
              )
            ],
          )
        ],
      ),
    ),);
  }
}

enum FoodCategory { burger, sides }
