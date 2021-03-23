import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key ket,
      @required this.text,
      @required this.press,
      this.color = kPrimaryColor,
      this.padding = const EdgeInsets.all(kDefaultPadding * 0.75)});

  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      padding: padding,
      color: color,
      minWidth: double.infinity,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
