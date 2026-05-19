import 'package:flutter/material.dart';
import '../global.dart';
import '../screens/Result_page.dart';


class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;

  BottomButton(this.buttonTitle, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child:
        Text(buttonTitle, style: kLargeLebalTextStyle,),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}