import 'package:Edustart/theme_Data/theme.dart';
import 'package:Edustart/widgets/custback_button.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            20,
            20,
            20,
            0,
          ),
          child: Column(
            children: <Widget>[
              MyBackButton(),
              SizedBox(height: 30.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Support desk',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w700),
                    ),
                  ]),
              SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                      height: 250,
                      width: 250,
                      decoration: custBoxdesign,
                      child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(children: [
                            Icon(
                              Icons.support_agent,
                              size: 130,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Support Desk",
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]))))
            ],
          ),
        ),
      ),
    );
  }
}
