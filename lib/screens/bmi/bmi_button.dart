import 'package:flutter/material.dart';

class BmiButtom extends StatelessWidget {
  const BmiButtom({
    super.key,
    required this.icon, 
    required this.onPressed,
  });

  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      fillColor: Colors.white,
      constraints: BoxConstraints.tightFor(
        height: 46,
        width: 46,
      ),
      elevation: 6,
      child: Icon(
        icon,
        size: 25,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}