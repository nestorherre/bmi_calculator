import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.action});
  final IconData icon;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: action,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F53),
      constraints: BoxConstraints.tightFor(width: 40.0, height: 40.0),
    );
  }
}
