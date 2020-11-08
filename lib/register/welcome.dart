import 'package:flutter/material.dart';
import 'package:tworld/register/sign_in.dart';
import 'package:tworld/register/sign_up.dart';
import 'package:tworld/screens/home_screen.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-World'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: navigateToSignIn,
            child: Text('Sign in'),
          ),
          RaisedButton(
            onPressed: navigateToSignUp,
            child: Text('Sign up'),
          ),
          RaisedButton(
              onPressed: navigateToHomeScreen,
            child: Text('Skip'),
          ),
        ],
      ),
    );
  }

  void navigateToSignIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(), fullscreenDialog: true));
  }

  void navigateToSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(), fullscreenDialog: true));
  }

  void navigateToHomeScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(), fullscreenDialog: true));
  }
}