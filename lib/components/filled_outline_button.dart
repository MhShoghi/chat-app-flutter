import 'package:flutter/material.dart';

import '../constants.dart';

class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    Key key,
    this.isFilled = true,
    @required this.press,
    @required this.text,
  }) : super(key: key);

  final bool isFilled;
  final VoidCallback press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.white)),
      color: isFilled ? Colors.white : Colors.transparent,
      onPressed: press,
      elevation: isFilled ? 2 : 0,
      child: Text(
        text,
        style: TextStyle(
            color: isFilled ? kContentColorLightTheme : Colors.white,
            fontSize: 12),
      ),
    );
  }
}
