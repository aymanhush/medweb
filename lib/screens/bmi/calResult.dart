
import 'dart:math';


class CalResult {
  CalResult({
    required this.height,
    required this.weight
    });

  final int height;
  final int weight; 
  double bmi = 0.0;

  String CalculateBMI(){
    bmi = weight / pow((height / 100), 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(bmi<18.5){
      return "UNDERWEIGHT";
    }
    else if(bmi >= 18.5 && bmi <= 24.9){
      return "HEALTHY WEIGHT";
    }
    else if(bmi >= 25 && bmi <= 29.9){
      return 'OVERWEIGHT';
    }
    else{
      return 'OBESE';
    }
  }

  String getReview(){

    if(bmi<18.5){
      return "You need to eat more and probably you need to exercise more. Consult your doctor for more information.";
    }
    else if(bmi >= 18.5 && bmi <= 24.9){
      return "You are in a healthy weight range. You can eat more and exercise more.";
    }
    else if(bmi >= 25 && bmi <= 29.9){
      return "You need to eat less and probably you need to exercise . Consult your doctor for more information";
    }
    else{
      return "You are in an obese weight range. You need to eat less and probably you need to exercise. Consult your doctor for more information.";
    }

  }

}