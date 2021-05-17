import 'package:flutter/material.dart';
import 'package:mobile_100asa/components/clean_app_bar.dart';
import 'package:mobile_100asa/components/spaced_container.dart';
import 'package:mobile_100asa/components/outline_text_form_field.dart';
import 'package:mobile_100asa/components/button.dart';
import 'package:mobile_100asa/utils/constants.dart';

class RecoverPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CleanAppBar('Recover Password'),
      body: SpacedContainer(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Please enter your email to reset your password. You\'ll receive an email with instructions. If you are experiencing problems with remembering your email, please contact us.',
                style: kRegularSmallTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24.0,
              ),
              OutlineTextFormField(
                labelText: 'Email',
              ),
              SizedBox(
                height: 24.0,
              ),
              Button(
                onPressed: () {},
                label: 'Reset Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
