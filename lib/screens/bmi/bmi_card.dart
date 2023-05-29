import 'package:flutter/material.dart';

class bmiCard extends StatelessWidget {
  const bmiCard({
    super.key,
    required this.title,
    required this.value,
    required this.child, 
    required this.label, 
    required this.width, 
    required this.height,
  });

  final String title;
  final String value;
  final Widget child;
  final String label;
  final double width;
  final double height;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: Theme.of(context).primaryColor,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,

            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 64,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 5),
              Text(    
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,),
              
              ),
            ],
          ),
          child,
        ],
      ),
    );
  }
}