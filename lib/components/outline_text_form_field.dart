import 'package:flutter/material.dart';

class OutlineTextFormField extends StatelessWidget {
  OutlineTextFormField({@required this.labelText, this.obscureText = false});

  final String labelText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: EdgeInsets.all(8.0),
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      style: TextStyle(
        fontSize: 14.0,
      ),
      obscureText: obscureText,
      // onChanged:(val)=> (){
      //   print("Success");
      // },
    );
  }
}
