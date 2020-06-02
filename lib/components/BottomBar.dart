import 'package:flutter/material.dart';
import '../constants.dart';

class BottomBar extends StatelessWidget {
  final String bottomBarText;
  final Function onTap;
  BottomBar({@required this.bottomBarText, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.pink,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 7),
        child: Center(
          child: Text(
            bottomBarText,
            textScaleFactor: 1.2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
