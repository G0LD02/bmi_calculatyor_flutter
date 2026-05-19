import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'global.dart';

class cardContent extends StatelessWidget {

  final icon;
  final lebal;

  cardContent(this.icon, this.lebal);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(lebal,
          style: kLebalTextStyle,
        )
      ],
    );
  }
}