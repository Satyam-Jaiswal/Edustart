import 'package:Edustart/theme_Data/colors.dart';
import 'package:Edustart/theme_Data/theme.dart';
import 'package:Edustart/widgets/custback_button.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PreformanceScreen extends StatefulWidget {
  @override
  _PreformanceScreenState createState() => _PreformanceScreenState();
}

class _PreformanceScreenState extends State<PreformanceScreen> {
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
                      'Preformance',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w700),
                    ),
                  ]),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 350,
                            decoration: custBoxdesign,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Classes",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: CircularPercentIndicator(
                                            radius: 120.0,
                                            lineWidth: 12.0,
                                            animation: true,
                                            percent: 0.75,
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor: LightColors.kRed,
                                            backgroundColor:
                                                LightColors.kDarkYellow,
                                            center: Text(
                                              "75%",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            )),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: new BoxDecoration(
                                                  color: LightColors.kRed,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Present"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: new BoxDecoration(
                                                  color:
                                                      LightColors.kDarkYellow,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Absent"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),

                      //from here
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 350,
                            decoration: custBoxdesign,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Doubts",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: CircularPercentIndicator(
                                            radius: 120.0,
                                            lineWidth: 12.0,
                                            animation: true,
                                            percent: 0.75,
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor: LightColors.kRed,
                                            backgroundColor:
                                                LightColors.kDarkYellow,
                                            center: Text(
                                              "75%",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            )),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: new BoxDecoration(
                                                  color: LightColors.kRed,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Asked"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: new BoxDecoration(
                                                  color:
                                                      LightColors.kDarkYellow,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Responded"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 350,
                            decoration: custBoxdesign,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Assignment",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: CircularPercentIndicator(
                                            radius: 120.0,
                                            lineWidth: 12.0,
                                            animation: true,
                                            percent: 0.75,
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor: LightColors.kRed,
                                            backgroundColor:
                                                LightColors.kDarkYellow,
                                            center: Text(
                                              "75%",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            )),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: new BoxDecoration(
                                                  color: LightColors.kRed,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Present"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: new BoxDecoration(
                                                  color:
                                                      LightColors.kDarkYellow,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("Absent"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),

                      //to here
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
