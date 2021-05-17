import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_100asa/components/clean_app_bar.dart';
import 'package:mobile_100asa/components/outline_text_form_field.dart';
import 'package:mobile_100asa/components/icon_text_content.dart';
import 'package:mobile_100asa/components/spaced_container.dart';
import 'package:mobile_100asa/components/button.dart';
import 'package:mobile_100asa/screens/home_screen.dart';
import 'package:mobile_100asa/utils/constants.dart';
import 'package:mobile_100asa/view_models/customer.dart';
import 'package:mobile_100asa/apiService.dart';
import 'package:mobile_100asa/screens/login_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
// import 'package:http/http.dart' as http;

class SignupScreen extends StatefulWidget {

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  CustomerModel model;
  APIService apiService;

  @override
  void initState() {
    apiService = new APIService();
    model = new CustomerModel();
    super.initState();
  }

  Future<void> registerWithGoogle() async {
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

  Future<void> loginWithFacebook() async {
    final facebookLogin = FacebookLogin();
    final facebookLoginResult = await facebookLogin.logIn(['email']);

    print(facebookLoginResult.accessToken);
    print(facebookLoginResult.accessToken.token);
    print(facebookLoginResult.accessToken.expires);
    print(facebookLoginResult.accessToken.permissions);
    print(facebookLoginResult.accessToken.userId);
    print(facebookLoginResult.accessToken.isValid());

    print(facebookLoginResult.errorMessage);
    print(facebookLoginResult.status);

    final token = facebookLoginResult.accessToken.token;

    /// for profile details also use the below code
    // final graphResponse = await http.get(
    //     'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=$token');
    // final profile = json.decode(graphResponse.body);
    // print(profile);
    /*
    from profile you will get the below params
    {
     "name": "Iiro Krankka",
     "first_name": "Iiro",
     "last_name": "Krankka",
     "email": "iiro.krankka\u0040gmail.com",
     "id": "<user id here>"
    }
   */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: CleanAppBar('Signup'),
      body: SpacedContainer(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        contentPadding: EdgeInsets.all(8.0),
                        border: OutlineInputBorder(),
                        labelText: "First Name",
                      ),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                      validator: (val) =>
                      val.isEmpty ? 'Enter your first name' : null,
                      onChanged:(val){
                        setState(() {
                          this.model.name = val;
                        });

                      },
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        contentPadding: EdgeInsets.all(8.0),
                        border: OutlineInputBorder(),
                        labelText: "Last Name",
                      ),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                      validator: (val) =>
                      val.isEmpty ? 'Enter your last name' : null,
                      onChanged:(val){
                        setState(() {
                          this.model.lastName = val;
                        });

                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  contentPadding: EdgeInsets.all(8.0),
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
                style: TextStyle(
                  fontSize: 14.0,
                ),
                validator: (val) =>
                val.isEmpty ? 'Enter an email' : null,
                onChanged:(val){
                  setState(() {
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
                  labelText: "Password",
                ),
                style: TextStyle(
                  fontSize: 14.0,
                ),
                validator: (val) => val.length < 8
                    ? 'Enter an password 6+ chars long'
                    : null,
                onChanged:(val){
                  setState(() {
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
                  apiService.createCustomer(model).then((ret) {
                    if (ret) {
                      print("success");
                      showAlertDialog(context);

                    }
                  });
                },
                label: 'Submit',
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
                  registerWithGoogle();
                },
                child: IconTextContent(
                  icon: FontAwesomeIcons.google,
                  label: 'Signup with Google',
                ),
                color: Color(0xFFDF4B37),
              ),
              SizedBox(
                height: 24.0,
              ),
              Button(
                onPressed: () {
                  loginWithFacebook();
                },
                child: IconTextContent(
                  icon: FontAwesomeIcons.facebookF,
                  label: 'Signup with Facebook',
                ),
                color: Color(0xFF3A589E),
              )
            ],
          ),
        ),
      ),
    );
  }
}
showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Success"),
    content: Text("Your account is not active yet. In order to complete the sign-up process, please click the confirmation link we have sent to your email."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}