import 'package:flutter/material.dart';
import '../component/reusable_card.dart';
import '../global.dart';
import '../component/card_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../component/resultCard.dart';
import '../component/BottomButton.dart';

class ResultPage extends StatelessWidget {

  final bmiResult;
  final bmi;
  final bmiInterpretation;

  ResultPage(this.bmi, this.bmiInterpretation, this.bmiResult);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:
            Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child:
              Text('Your Results', style: kLargeLebalTextStyle,),
            ),
          ),
            Expanded(
              flex: 7,
              child: Resultcard(
                  kActiveColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Text(bmiInterpretation.toUpperCase(), style: kResultTextStyle,),
                        Text(bmi, style: kBIMTextStyle,),
                        Text(bmiResult,style: kLargeLebalTextStyle, textAlign: TextAlign.center,)
                    ],
                  ),
              ),
            ),
            BottomButton('RE-CALCULATE', () {
              Navigator.pop(
                context
              );
            })
        ],
      ),
    );
  }
}
