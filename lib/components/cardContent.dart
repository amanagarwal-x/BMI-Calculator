import 'package:flutter/material.dart';
import '../constants.dart';

class CardContent extends StatelessWidget {
  final String cardText;
  final IconData cardIcon;
  CardContent({@required this.cardText, this.cardIcon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cardText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
