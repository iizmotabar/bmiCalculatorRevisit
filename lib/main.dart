import 'package:bmi_calculator/screens/results_screen.dart';
import 'package:flutter/material.dart';

import 'screens/input_screen.dart';

const bottomContainerColor = Color.fromARGB(255, 146, 3, 46);
const activeContainerColor = Color.fromARGB(255, 41, 42, 61);
const containerColor = Color(0xff232444);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyText1: TextStyle(
            color: Colors.white,
          )),
          scaffoldBackgroundColor: const Color(0xff1A1B32),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff1A1B32),
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const InputScreen(),
        '/results': (context) => const ResultsPage(),
      },
    );
  }
}
