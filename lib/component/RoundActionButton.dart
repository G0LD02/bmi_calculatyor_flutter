import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundActionButton extends StatelessWidget {
  final icon;
  final VoidCallback onPres;
  RoundActionButton({required this.icon, required this.onPres});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPres,
      child: FaIcon(icon),
      constraints: BoxConstraints.tightFor(width: 56.8, height: 56.8),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
