import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bmi/result_screen.dart';
import 'bmi_button.dart';
import 'bmi_card.dart';
import 'calResult.dart';
import 'custom_buttom.dart';

class Bmi_Screen extends StatefulWidget {
  const Bmi_Screen({super.key});

  @override
  State<Bmi_Screen> createState() => _Bmi_ScreenState();
}

class _Bmi_ScreenState extends State<Bmi_Screen> {
  int age = 15;
  int weight = 75;
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Text(
              'Check your Body Mass Index (BMI) to know if you are in shape',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bmiCard(
                  width: 155,
                  height: 216,
                  title: 'AGE',
                  value: age.toString(),
                  label: 'YRS',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BmiButtom(
                        icon: Icons.remove,
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      BmiButtom(
                        icon: Icons.add,
                        onPressed: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                bmiCard(
                  width: 190,
                  height: 216,
                  title: 'WEIGHT',
                  value: weight.toString(),
                  label: 'KG',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BmiButtom(
                        icon: Icons.remove,
                        onPressed: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                      BmiButtom(
                        icon: Icons.add,
                        onPressed: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            bmiCard(
              width: double.infinity,
              height: 216,
              title: 'HEIGHT',
              value: height.toString(),
              label: 'CM',
              child: Slider(
                  min: 100,
                  max: 200,
                  value: height.toDouble(),
                  activeColor: Colors.white,
                  inactiveColor: Colors.white12,
                  onChanged: (newValue) {
                    setState(() {
                      height = newValue.toInt();
                    });
                  }),
            ),
            SizedBox(height: 43),
            Text(
              'Tap the button below to check your BMI result',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomButton(
              title: 'CALCULATE',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      CalResult bmiCalculator = CalResult(
                        height: height, 
                        weight: weight,
                        );
                      return ResultScreen(
                        bmiResult: bmiCalculator.CalculateBMI(),
                        resultText: bmiCalculator.getResult(),
                        interpretation: bmiCalculator.getReview(),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
