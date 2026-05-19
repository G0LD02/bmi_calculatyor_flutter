import 'Result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../component/reusable_card.dart';
import '../component/card_content.dart';
import '../global.dart';
import '../component/BottomButton.dart';
import '../component/RoundActionButton.dart';
import '../calculatorBrain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 18;
  Gender? selectedGender;

  // Color maleCardColor = inActiveColor;
  // Color femaleCardColor = inActiveColor;
  //
  // void updateColor(Gender gender) {
  //   if (gender == Gender.male) {
  //     if (maleCardColor == inActiveColor) {
  //       maleCardColor = activeColor;
  //       femaleCardColor = inActiveColor;
  //     } else {
  //       maleCardColor = inActiveColor;
  //     }
  //   } else if (gender == Gender.female) {
  //     if (femaleCardColor == inActiveColor) {
  //       femaleCardColor = activeColor;
  //       maleCardColor = inActiveColor;
  //     } else {
  //       femaleCardColor = inActiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          //First Row
          Expanded(
            child: Row(
              children: [
                //Male Card
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.male
                        ? kActiveColor
                        : kInActiveColor,
                    cardContent(FontAwesomeIcons.mars, 'MALE'),
                    () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.female
                        ? kActiveColor
                        : kInActiveColor,
                    cardContent(FontAwesomeIcons.venus, 'FEMALE'),
                    () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          //second row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    kInActiveColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGHT', style: kLebalTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(height.toString(), style: kNumberStyle),
                            Text('cm', style: kLebalTextStyle),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xFFBDBE98),
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0xFFEB1555),
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 25.0,
                            ),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    () {},
                  ),
                ),
              ],
            ),
          ),
          //3rd row
          Expanded(
            child: Row(
              children: [
                //right
                Expanded(
                  child: ReusableCard(
                    kInActiveColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kLebalTextStyle),
                        Text(weight.toString(), style: kNumberStyle),
                        // SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundActionButton(
                              icon: FontAwesomeIcons.minus,
                              onPres: () {
                                setState(() {
                                  weight--;
                                  print(weight);
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundActionButton(
                              icon: FontAwesomeIcons.plus,
                              onPres: () {
                                setState(() {
                                  weight++;
                                  print(weight);
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    () {
                      setState(() {});
                    },
                  ),
                ),
                //left
                Expanded(
                  child: ReusableCard(
                    kInActiveColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age', style: kLebalTextStyle),
                        Text(age.toString(), style: kNumberStyle),
                        // SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundActionButton(
                              icon: FontAwesomeIcons.minus,
                              onPres: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundActionButton(
                              icon: FontAwesomeIcons.plus,
                              onPres: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          BottomButton('CALCULATE', () {
            calculatorBrain calc = calculatorBrain(height, weight);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResultPage(
                calc.calBmi(),
                calc.getResult(),
                calc.getInterpretation(),
              ),),
            );
          }),
        ],
      ),
    );
  }
}

