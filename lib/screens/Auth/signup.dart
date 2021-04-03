import 'package:Edustart/screens/Auth/background.dart';
import 'package:Edustart/screens/Auth/login.dart';
import 'package:Edustart/screens/Auth/socialIcon.dart';
import 'package:Edustart/screens/homepage.dart';
import 'package:Edustart/theme_Data/colors.dart';
import 'package:Edustart/theme_Data/theme.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextStyle style = TextStyle(fontSize: 20.0, color: Colors.black);
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userNameField = TextField(
        controller: usernameController,
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          icon: Icon(
            Icons.account_box,
            color: LightColors.kRed,
          ),
          contentPadding: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 15.0),
          hintText: "User Name",
          hintStyle: TextStyle(
            color: Colors.black,
          ),
        ));
    final emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        icon: Icon(
          Icons.mail,
          color: LightColors.kRed,
        ),
        contentPadding: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 15.0),
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
    final signUpButon = Material(
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
        child: Text("Sign Up",
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
              height: 670.0,
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
                      userNameField,
                      SizedBox(height: 15.0),
                      emailField,
                      SizedBox(height: 15.0),
                      passwordField,
                      SizedBox(
                        height: 25.0,
                      ),
                      signUpButon,
                      SizedBox(
                        height: 15.0,
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
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? ",
                              style: TextStyle(color: Colors.black)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ));
                            },
                            child: Text(
                              "Login",
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
