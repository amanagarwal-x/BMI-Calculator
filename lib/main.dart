import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF111320),
        appBarTheme: AppBarTheme(
          color: Color(0xFF111322),
        ),
      ),
      home: InputPage(),
      routes: {
        "inputPage": (context) => InputPage(),
        "resultPage": (context) => ResultPage(),
      },
    );
  }
}
