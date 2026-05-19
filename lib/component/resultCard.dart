import 'package:flutter/material.dart';

class Resultcard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;


  Resultcard (this.cardColor, this.cardChild);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}