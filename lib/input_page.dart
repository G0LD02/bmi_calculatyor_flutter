import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'card_content.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xFF111328);
const inActiveColor = Color(0xFF1D1E33);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {

  Color maleCardColor = inActiveColor;
  Color femaleCardColor = inActiveColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = inActiveColor;
      } else {
        maleCardColor = inActiveColor;
      }
    } else if (gender == 2) {
      if (femaleCardColor == inActiveColor) {
        femaleCardColor = activeColor;
        maleCardColor = inActiveColor;
      } else {
        femaleCardColor = inActiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          //First Row
          Expanded(child: 
            Row(
              children: [
                //Male Card
                Expanded(child:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      maleCardColor,
                      cardContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  )
                ),
                Expanded(child:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      femaleCardColor,
                      cardContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  )
                ),
              ],
            )
          ),
          Expanded(child:
            Row(
            children: [
              Expanded(child:
              ReusableCard(
                  inActiveColor,
                  FaIcon(
                    FontAwesomeIcons.mars,
                  )
              ),
              ),
            ],
           ),
          ),
          Expanded(child:
          Row(
            children: [
              Expanded(child:
                ReusableCard(
                    inActiveColor,
                    FaIcon(
                      FontAwesomeIcons.mars,
                    )
                ),
              ),
              Expanded(child:
                ReusableCard(
                    inActiveColor,
                    FaIcon(
                      FontAwesomeIcons.mars,
                    )
                ),
              ),
            ],
          )
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      )

    );
  }
}




