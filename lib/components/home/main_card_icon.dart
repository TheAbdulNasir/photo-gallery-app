import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainCardIcon extends StatelessWidget {
  MainCardIcon({@required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.0,
      padding: EdgeInsets.only(right: 12.0),
      child: Center(
        child: FaIcon(
          icon,
          size: 28.0,
        ),
      ),
    );
  }
}
