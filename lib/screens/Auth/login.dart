import 'package:Edustart/screens/Auth/background.dart';
import 'package:Edustart/screens/Auth/socialIcon.dart';
import 'package:Edustart/screens/homepage.dart';
import 'package:Edustart/theme_Data/colors.dart';
import 'package:Edustart/theme_Data/theme.dart';
import 'package:flutter/material.dart';
import 'package:Edustart/screens/Auth/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextStyle style = TextStyle(fontSize: 20.0, color: Colors.black);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      controller: usernameController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        icon: Icon(
          Icons.mail,
          color: LightColors.kRed,
        ),
        contentPadding: EdgeInsets.fromLTRB(0.1, 15.0, 20.0, 15.0),
        hintText: "Email",
        hintStyle: TextStyle(color: Colors.black),
      ),
    );
    final passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: LightColors.kRed,
        ),
        contentPadding: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.black),
      ),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: LightColors.kDarkBlue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Homepage(),
              ));
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(25.0, 70.0, 25.0, 25.0),
              height: 600.0,
              width: double.infinity,
              decoration: custBoxdesign,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 150.0,
                        child: Image.asset(
                          "assets/images/logo_t.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      emailField,
                      SizedBox(height: 15.0),
                      passwordField,
                      SizedBox(
                        height: 25.0,
                      ),
                      loginButon,
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SocalIcon(
                            iconSrc: "assets/icons/facebook.svg",
                            press: () {},
                          ),
                          SocalIcon(
                            iconSrc: "assets/icons/google-plus.svg",
                            press: () {},
                          ),
                          SocalIcon(
                            iconSrc: "assets/icons/twitter.svg",
                            press: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have account? ",
                              style: TextStyle(color: Colors.black)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ));
                            },
                            child: Text(
                              "Register now",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
