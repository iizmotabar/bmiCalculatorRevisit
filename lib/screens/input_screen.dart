import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/widgets/height_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_buttons.dart';
import '../widgets/calculate_button.dart';
import '../widgets/gender_selector.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
          backgroundColor: const Color(0xff1A1B32),
        ),
        backgroundColor: const Color(0xff1A1B32),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const GenderSelector(),
                  const HeightSlider(),
                  const BottomButtons(),
                  CalculateButton(
                    title: "CALCULATE",
                    navigator: () {
                      CalculatorBrain brain = CalculatorBrain(
                          getSliderValue, getWeightValue.toDouble());

                      String bmiValue = brain.calculateBmi();
                      var bmiResult = brain.getResult();
                      var bmiComment = brain.getBmiComment();

                      Navigator.pushNamed(context, '/results', arguments: {
                        'bmiValue': bmiValue,
                        'bmiResult': bmiResult,
                        'bmiComment': bmiComment,
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
