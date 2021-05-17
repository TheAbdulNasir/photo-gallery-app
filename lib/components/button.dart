import 'package:flutter/material.dart';
import 'package:mobile_100asa/utils/constants.dart';
import 'package:mobile_100asa/utils/enums.dart';

class Button extends StatelessWidget {
  final bool outlined;
  final Color color;
  final Color textColor;
  final dynamic child;
  final String label;
  final Size size;
  final bool rounded;
  final Function onPressed;

  Button({
    this.outlined = false,
    this.color,
    this.textColor,
    this.child,
    this.label,
    this.size,
    this.rounded = false,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var _color = color ?? Colors.grey[900];
    var _borderSideColour = color ?? Colors.grey[900];
    var _child;
    var _padding;
    var _height;

    if (outlined) {
      _color = Colors.transparent;
    }

    if (child != null) {
      _child = child;
    } else {
      _child = Text(
        label.toUpperCase(),
        style: kButtonTextStyle,
      );
    }

    if (size == Size.xSmall) {
      _padding = EdgeInsets.symmetric(
        horizontal: 24.0,
      );
      _height = 28.0;
    } else if (size == Size.small) {
      _padding = EdgeInsets.symmetric(
        horizontal: 8.0,
      );
      _height = 40.0;
    } else if (size == Size.large) {
    } else {
      _padding = EdgeInsets.symmetric(
        horizontal: 16.0,
      );
      _height = 48.0;
    }

    return Container(
      height: _height,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rounded ? 40.0 : 4.0),
          side: BorderSide(color: _borderSideColour),
        ),
        color: _color,
        textColor: textColor ?? Colors.grey[50],
        padding: _padding,
        onPressed: onPressed,
        child: _child,
      ),
    );
  }
}
