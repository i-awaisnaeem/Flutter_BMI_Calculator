import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_bmi_calculator/components/ReuseableCard.dart';
import 'package:flutter_bmi_calculator/components/bottom_buttons.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.interpretation,required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Your Result',
                      style: kTitleTextStyle,
                    ))),
            Expanded(
                flex: 5,
                child: ReuseableCard(
                  onPress: () {},
                  colour: kAactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )),
            BottomButton(buttonTitle: 'Re-Calculate', onTap: (){
              Navigator.pop(context);
            },)
          ],
        ));
  }
}
