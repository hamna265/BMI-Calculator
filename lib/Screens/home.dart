
import 'package:bmical/Data/constant.dart';
import 'package:bmical/Screens/bottom_button.dart';
import 'package:bmical/Screens/card_data.dart';
import 'package:bmical/Screens/customfloatingbutton.dart';
import 'package:bmical/Screens/result.dart';
import 'package:bmical/reused.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Data/brain .dart';



class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  //  late Gender selectedGender;
  int height = 100;
  int weight = 0;
  int age = 0;
  Color maleCardColor = kInActiveCardcolor;
  Color femaleCardColor = kInActiveCardcolor;
  void updatecolor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == kInActiveCardcolor) {
        maleCardColor = KActiveCardcolor;
        femaleCardColor = kInActiveCardcolor;
      } else {
        maleCardColor = kInActiveCardcolor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor == kInActiveCardcolor) {
        femaleCardColor = KActiveCardcolor;
        maleCardColor = kInActiveCardcolor;
      } else {
        femaleCardColor = kInActiveCardcolor;
      }
    }
  }

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
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    // colour: selectedGender == Gender.male
                    // ? ActiveCardcolor
                    // : InActiveCardcolor,
                    cardchild: const card_data(
                      text: 'MALE',
                      icons: FontAwesomeIcons.venus,
                    ),
                    colour: maleCardColor,
                    onPress: () {
                      setState(() {
                        updatecolor(Gender.male);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    // colour: selectedGender == Gender.female
                    // ? ActiveCardcolor
                    // : InActiveCardcolor,
                    cardchild: const card_data(
                        text: 'FEMALE', 
                        icons: FontAwesomeIcons.venus,
                        ),
                    colour: femaleCardColor,
                    onPress: () {
                      setState(() {
                        updatecolor(Gender.female);
                      });
                    },
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusedCard(
                colour: KActiveCardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: kLabelTextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberTextstyle),
                        const Text(
                          "cm",
                          style: kLabelTextstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: kSliderInactive,
                        thumbColor: const Color(0xffeb1555),
                        activeTrackColor: Colors.white,
                        overlayColor: const Color(0x29eb1555),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: 100,
                        max: 220,
                      ),
                    )
                  ],
                ),
                onPress: () {},
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    colour: KActiveCardcolor,
                    cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: kLabelTextstyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Action_button(
                                  onpress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icons.remove),
                              const SizedBox(
                                width: 10,
                              ),
                              Action_button(
                                  onpress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icons.add),
                            ],
                          )
                        ]),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    colour: KActiveCardcolor,
                    cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                            style: kLabelTextstyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Action_button(
                                  onpress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icons.remove),
                              const SizedBox(
                                width: 10,
                              ),
                              Action_button(
                                  onpress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icons.add),
                            ],
                          )
                        ]),
                    onPress: () {},
                  ),
                ),
              ],
            )),
            // onPressed: () {
            //   // Navigator.push(context,
            //   //     MaterialPageRoute(builder: (Context) => Result_page()));

            // },
            Buttom_Button(
              buttontext: 'Calculate',
              onpress: () {
                // ignore: unused_local_variable
                CalculatorBrain calc = CalculatorBrain(height, weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result_Page(
                            bmiResult: calc.calculateBMI(),
                            resultText: calc.getResult(),
                            interpretation: calc.getinterpretation())));

           
              
            
                      },
            ),
          ],
        ));
  }
}