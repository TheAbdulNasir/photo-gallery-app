import 'package:flutter/material.dart';
import 'package:mobile_100asa/screens/home_screen.dart';
import 'package:mobile_100asa/screens/initial_screen.dart';
import 'package:mobile_100asa/screens/login_screen.dart';
import 'package:mobile_100asa/screens/recover_password_screen.dart';
import 'package:mobile_100asa/screens/signup_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[50],
          fontFamily: 'Raleway',
          primaryColor: Colors.grey[900],
          accentColor: Colors.grey[50],
        ),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => InitialScreen(),
          '/login': (BuildContext context) => LoginScreen(),
          '/signup': (BuildContext context) => SignupScreen(),
          '/recover-password': (BuildContext context) =>
              RecoverPasswordScreen(),
          '/home': (BuildContext context) => HomeScreen(),
        });
  }
}
