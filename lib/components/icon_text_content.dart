import 'dart:ffi';

import 'package:flutter/material.dart';

class IconTextContent extends StatelessWidget {
  IconTextContent({
    @required this.icon,
    @required this.label,
    this.iconSize,
  });

  final IconData icon;
  final String label;
  final Double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize ?? 16.0,
        ),
        SizedBox(
          width: 12.0,
        ),
        Text(
          label.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
