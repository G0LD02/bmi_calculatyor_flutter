import 'package:flutter/material.dart';

class Resultcard extends StatelessWidget {
  final Color cardColor;



  Resultcard (this.cardColor);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}