import 'package:flutter/material.dart';

import '../main.dart';

class CalculateButton extends StatelessWidget {
  final Function navigator;
  final String title;

  const CalculateButton(
      {Key? key, required this.navigator, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(  
      height: 80,
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(bottomContainerColor)),
        //    style:  ButtonStyle(backgroundColor: Color(Colors.red)),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: () => navigator(),
      ),
    );
  }
}
