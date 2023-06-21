import 'package:flutter_application_1/screens/calorie_calculator/BottomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/calorie_calculator/variables.dart';

class ResultsPage extends StatelessWidget {
  final String calorieSum;
  final String resultText;

  ResultsPage({required this.calorieSum, required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Total Calories Result'),
        centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: boxShadow,
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'TOTAL CALORIES',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            calorieSum,
                            style: TextStyle(
                                fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text(
                            'cal',
                            style: TextStyle(fontSize: 30,color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          resultText,
                          style: TextStyle(fontSize: 18,color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Column(
                          children: [
                            Text(
                              'Average daily intake for men is 2500 calories',
                              textAlign: TextAlign.center,
                              style: adviceTextStyle,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Average daily intake for women is 2000 calories',
                              textAlign: TextAlign.center,
                              style: adviceTextStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Recalculate',
            )
          ],
        ),
      ),
    );
  }
}