import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

double _sliderValue = 180;

get getSliderValue {
  return _sliderValue;
}

class HeightSlider extends StatefulWidget {
  const HeightSlider({Key? key}) : super(key: key);

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xff232444).withOpacity(0.8),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    "HEIGHT",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                RichText(
                    text: TextSpan(
                        text: _sliderValue.toStringAsFixed(1),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                        children: const [
                      TextSpan(text: 'CM', style: TextStyle(fontSize: 10)),
                    ])),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30),
                      overlayColor: Colors.white),
                  child: Slider(
                    value: _sliderValue,
                    max: 200,
                    min: 120,
                    activeColor: bottomContainerColor,
                    thumbColor: bottomContainerColor,
                    label: _sliderValue.round().toString(),
                    onChanged: (double updatedValue) {
                      setState(
                        () {
                          _sliderValue = updatedValue;
                        },
                      );
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
