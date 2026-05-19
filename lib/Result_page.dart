import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'global.dart';
import 'card_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultCard.dart';
class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child:
            Container(child:
              Text('Your Results', style: kLargeLebalTextStyle,),
            ),
          ),
            Expanded(
                flex: 7,
                child: Resultcard(kActiveColor))
        ],
      ),
    );
  }
}
