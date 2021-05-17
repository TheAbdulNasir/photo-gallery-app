import 'package:flutter/material.dart';

class BorderedCard extends StatelessWidget {
  BorderedCard({@required this.child, this.padding = 12.0});

  final double padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[200],
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: child,
    );
  }
}
