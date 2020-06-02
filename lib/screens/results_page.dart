import 'package:bmi_calculator/components/BottomBar.dart';
import 'package:bmi_calculator/components/card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/calculatorBrain.dart';
import 'package:flutter/widgets.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult});
  final bmiResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              "Your Result",
              style: kNumberStyle.copyWith(fontSize: 40),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Normal",
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kNumberStyle.copyWith(fontSize: 90),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Keep it up! Eat Healthy and keep Exercising!",
                      style: lBmiInfoTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomBar(
            bottomBarText: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
