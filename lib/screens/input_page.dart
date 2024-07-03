import 'package:flutter_bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator/components/ReuseableCard.dart';
import 'package:flutter_bmi_calculator/components/IconContents.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import '../components/RoundIconButton.dart';
import 'package:flutter_bmi_calculator/components/bottom_buttons.dart';
import 'package:flutter_bmi_calculator/calculator_brain.dart';

enum Gender {
  male,
  female
}

class InputData extends StatefulWidget {
  const InputData({super.key});

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: selectedGender == Gender.male ? kAactiveCardColor : kInactiveCardColor,
                        cardChild: const IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReuseableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colour: selectedGender == Gender.female? kAactiveCardColor : kInactiveCardColor,
                        cardChild: const IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                        onPress: () {},
                        colour: kAactiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'HEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toString(),
                                  style: kNumberTextStyle,
                                ),
                                const  Text(
                                  'cm',
                                  style: kLabelTextStyle,
                                )
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: const Color(0xffffffff),
                                inactiveTrackColor: const Color(0xff8d8e98),
                                thumbColor:const Color(0xfff97038),
                                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                                overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
                              ),
                              child: Slider(
                                  value: height.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height = newValue.round();
                                    });
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                        onPress: () {},
                        colour: kAactiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const  Text('WEIGHT',
                              style: kLabelTextStyle,),
                            Text(
                              weight.toString(),style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(icon: FontAwesomeIcons.plus,
                                  onPressed:(){
                                    setState(() {
                                      weight++;
                                    });
                                  } ,
                                ),
                                const   SizedBox(width: 10.0,),
                                RoundIconButton(icon: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },)
                              ],
                            )
                          ],),
                      ),
                    ),
                    Expanded(
                        child: ReuseableCard(
                          onPress: () {},
                          colour: kAactiveCardColor,
                          cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const  Text('AGE',
                                  style: kLabelTextStyle,),
                                Text(
                                  age.toString(),style: kNumberTextStyle,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconButton(icon: FontAwesomeIcons.plus,
                                      onPressed:(){
                                        setState(() {
                                          age++;
                                        });
                                      } ,
                                    ),
                                    const   SizedBox(width: 10.0,),
                                    RoundIconButton(icon: FontAwesomeIcons.minus,
                                      onPressed: (){
                                        setState(() {
                                          age--;
                                        });
                                      },)
                                  ],
                                )
                              ]
                          ),
                        ))
                  ],
                )),
            BottomButton(buttonTitle: 'Calculate', onTap: (){
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> ResultPage(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                interpretation: calc.getInterpretation(),
              )));
            },),
          ],
        ));
  }
}


