import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_100asa/components/clean_app_bar.dart';
import 'package:mobile_100asa/components/outline_text_form_field.dart';
import 'package:mobile_100asa/components/icon_text_content.dart';
import 'package:mobile_100asa/components/spaced_container.dart';
import 'package:mobile_100asa/components/button.dart';
import 'package:mobile_100asa/screens/recover_password_screen.dart';
import 'package:mobile_100asa/utils/constants.dart';
import 'package:mobile_100asa/view_models/customer.dart';
import 'package:mobile_100asa/apiService.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobile_100asa/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  CustomerModel model;
  APIService apiService;

  @override
  void initState() {
    apiService = new APIService();
    model = new CustomerModel();
    super.initState();
  }

  Future<void> loginWithGoogle() async {
    GoogleSignIn _googleSignIn =  GoogleSignIn (
      scopes: [
        'email',
        'openid',
        'profile'
        // you can add extras if you require
      ],
    );

    _googleSignIn.signIn().then((GoogleSignInAccount acc) async {
      GoogleSignInAuthentication auth = await acc.authentication;

      acc.authentication.then((GoogleSignInAuthentication auth) async {

        String accessToken = auth.accessToken;
        String provider = "Google";
        apiService.loginWithGoogle(provider, accessToken)
            .then((ret) => {
          if (ret != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ),
          },

          // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:   MainView())),
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: CleanAppBar('Login'),
      body: SpacedContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: MediaQuery. of(context). size. height*0.6,
              child: Form(
                key: _formKey,
                child: ListView(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        contentPadding: EdgeInsets.all(8.0),
                        border: OutlineInputBorder(),
                        labelText: this.model.email !=null? this.model.email: "Email",
                      ),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                      validator: (val) =>
                      val.isEmpty ? 'Enter an email' : null,
                      onChanged:(val){
                        setState(() {
                          //print("success email");
                          this.model.email = val;
                        });

                      },
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        contentPadding: EdgeInsets.all(8.0),
                        border: OutlineInputBorder(),
                        labelText: this.model.password != null?this.model.password : "Password",
                      ),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                      validator: (val) => val.length < 8
                          ? 'Enter an password 6+ chars long'
                          : null,
                      onChanged:(val){
                        setState(() {
                          //print("Success password");
                          this.model.password = val;
                        });

                      },
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Button(
                      onPressed: () {
                        apiService.loginCustomer(this.model.email, this.model.password)
                            .then((ret) => {
                          if (ret != null) {
                            print("Success"),
                            print(ret.user.followedByCount),
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            ),
                          },

                          // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child:   MainView())),
                        });
                      },
                      label: 'Login',
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Center(
                      child: Text(
                        'OR',
                        style: kRegularSmallTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Button(
                      onPressed: () {
                        print("click");
                        loginWithGoogle();
                      },
                      child: IconTextContent(
                        icon: FontAwesomeIcons.google,
                        label: 'Login with Google',
                      ),
                      color: Color(0xFFDF4B37),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Button(
                      onPressed: () {},
                      child: IconTextContent(
                        icon: FontAwesomeIcons.facebookF,
                        label: 'Login with Facebook',
                      ),
                      color: Color(0xFF3A589E),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Button(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecoverPasswordScreen(),
                  ),
                );
              },
              label: 'Forgot your password?',
              color: Colors.grey[200],
              textColor: Colors.grey[900],
            ),
            SizedBox(
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
