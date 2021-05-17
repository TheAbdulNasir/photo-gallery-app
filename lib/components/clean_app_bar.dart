import 'package:flutter/material.dart';

class CleanAppBar extends StatelessWidget with PreferredSizeWidget {
  final Size preferredSize;
  final String title;

  CleanAppBar(this.title) : preferredSize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.grey[50],
      iconTheme: IconThemeData(
        color: Colors.grey[900],
      ),
      elevation: 0,
      title: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: Colors.grey[900],
          fontSize: 16,
        ),
      ),
      automaticallyImplyLeading: true,
    );
  }
}
