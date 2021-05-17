/// A very simple Container with the right padding all around
/// to contains the major app screens.

import 'package:flutter/material.dart';

class SpacedContainer extends StatelessWidget {
  SpacedContainer({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 20.0),
      child: child,
    );
  }
}
