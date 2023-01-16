import 'package:bmical/Data/constant.dart';
import 'package:bmical/Screens/bottom_button.dart';

import 'package:bmical/reused.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Result_Page extends StatelessWidget {
  const Result_Page(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kResultPageTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusedCard(
                  colour: KActiveCardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kResulttextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextstyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kbodyTextstyle,
                      )
                    ],
                  ),
                  onPress: () {})),
          // FlatButton(
          //     onPressed: () {},
          // child:
          Buttom_Button(
            buttontext: 'Re-Calculate',
            onpress: () {
              Navigator.pop(context);
            },
            // )
          )
        ],
      ),
    );
  }
}
