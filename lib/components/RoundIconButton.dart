import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  RoundIconButton({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 54,
        width: 54,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
