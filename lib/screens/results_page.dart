import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget{
  const ResultsPage(this.bmiResult,this.resultText,this.interpretation, {super.key});
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
            children: <Widget>[
               Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                        'Result',
                      style: kTitleTextStyle,
                    ),
                  )
              ),
              Expanded(
                  flex: 5,
                child: ReusableCard(
                    (){},
                    kActiveColor,
                    Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
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
                           ),
                     ],
                    )
                ),
              ),
                BottomButton(
                    (){
                      Navigator.pop(context);
                    },
                    'Re-calculate'
                ),
            ],
          ),
    );
  }
}