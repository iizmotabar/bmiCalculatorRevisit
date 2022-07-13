import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderSelector extends StatefulWidget {
  const GenderSelector({Key? key}) : super(key: key);

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  var userGender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                userGender = Gender.male;
              });
            },
            child: Container(
              // Color.fromARGB(255, 41, 42, 61).withOpacity(0.8),

              decoration: BoxDecoration(
                  color: userGender == Gender.male
                      ? activeContainerColor.withOpacity(0.8)
                      : containerColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(10),
              height: 200,

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.male,
                      size: 100,
                      color: Colors.white,
                    ),
                    Text(
                      "MALE",
                      style: TextStyle(color: Colors.white),
                    )
                  ]),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                userGender = Gender.female;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: userGender == Gender.female
                      ? const Color.fromARGB(255, 41, 42, 61).withOpacity(0.8)
                      : const Color(0xff232444).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(10),
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.female,
                      color: Colors.white,
                      size: 100,
                    ),
                    Text(
                      "FEMALE",
                      style: TextStyle(color: Colors.white),
                    )
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
