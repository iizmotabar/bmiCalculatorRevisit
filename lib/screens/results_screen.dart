import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    var bmiValue = arg['bmiValue'];
    var bmiResult = arg['bmiResult'];
    var bmiComment = arg['bmiComment'];

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('BMI CALCULATOR'),
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.chevron_left_sharp,
                  size: 40,
                )),
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Your Result',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: activeContainerColor,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                            child: Text(
                          bmiResult.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        )),
                        Center(
                          child: Text(
                            bmiValue,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 80,
                                color: Colors.white),
                          ),
                        ),
                        Center(
                            child: Text(
                          bmiComment,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ))
                      ]),
                ),
              ),
              CalculateButton(
                title: 'RE-CALCULATE',
                navigator: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          )),
    );
  }
}
