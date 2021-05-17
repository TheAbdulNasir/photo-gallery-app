import 'package:flutter/material.dart';
import 'package:mobile_100asa/components/button.dart';
import 'package:mobile_100asa/utils/enums.dart';
import 'package:mobile_100asa/screens/login_screen.dart';
import 'package:mobile_100asa/screens/signup_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://100asa.azureedge.net/photos/817/3f75d5fe-5231-451d-9b89-701b680bc6c6.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 24),
              Image(
                image: AssetImage('images/100asa-logo-white.png'),
                height: 40,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 140.0,
                    child: Button(
                      color: Colors.grey[50],
                      outlined: true,
                      label: 'Login',
                      rounded: true,
                      size: Size.small,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 12.0),
                  SizedBox(
                    width: 140.0,
                    child: Button(
                      color: Colors.grey[50],
                      textColor: Colors.grey[900],
                      label: 'Signup',
                      rounded: true,
                      size: Size.small,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text(
                'Photo by Mehdi Zavvar',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
