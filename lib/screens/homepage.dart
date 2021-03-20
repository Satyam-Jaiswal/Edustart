import 'package:Edustart/theme_Data/colors.dart';
import 'package:Edustart/theme_Data/theme.dart';
import 'package:Edustart/widgets/drawer.dart';
import 'package:Edustart/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final join_now = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF05BB8A),
      child: MaterialButton(
        // minWidth: 70,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        onPressed: () {
          //tode
        },
        child: Text("Join Class",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            )),
      ),
    );

    return Scaffold(
        key: scaffoldKey,
        body: SafeArea(
            child: Column(children: <Widget>[
          TopContainer(
              height: 200,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            if (scaffoldKey.currentState.isDrawerOpen) {
                              scaffoldKey.currentState.openEndDrawer();
                            } else {
                              scaffoldKey.currentState.openDrawer();
                            }
                          },
                          child: Icon(Icons.menu,
                              color: LightColors.kDarkBlue, size: 30.0),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 90.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.75,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: LightColors.kRed,
                            backgroundColor: LightColors.kDarkYellow,
                            center: CircleAvatar(
                              backgroundColor: LightColors.kBlue,
                              radius: 35.0,
                              backgroundImage: AssetImage(
                                'assets/images/avatar.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Satyam Jaiswal',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: LightColors.kDarkBlue,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Enrolled Student',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ])),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(15.0),
                      height: 200.0,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Text(
                                  "WELCOME BACK,",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: LightColors.kDarkBlue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Text(
                                "Name!",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: LightColors.kDarkBlue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Container(
                                  width: 180,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      "You were working on organic-4 notes when you were last active.",
                                    ),
                                  ))
                            ],
                          ),
                          SvgPicture.asset(
                            "assets/images/books_lover.svg",
                            height: 150,
                            width: 150,
                            // color: Colors.white,
                          ),
                        ],
                      ),
                      decoration: custBoxdesign),
                  Container(
                      margin: EdgeInsets.all(15.0),
                      height: 200.0,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: Text(
                                  "Upcoming Class",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: LightColors.kDarkBlue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Mathematics -",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: LightColors.kDarkBlue,
                                        // fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      " Section G",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.orange,
                                        // fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: join_now,
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage(
                              'assets/images/try1.png',
                            ),
                            height: 120,
                          )
                        ],
                      ),
                      decoration: custBoxdesign),
                ],
              ),
            ),
          ),
        ])),
        drawer: Custdrawer());
  }
}
