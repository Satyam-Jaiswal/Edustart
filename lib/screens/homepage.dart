import 'package:Edustart/theme_Data/colors.dart';
import 'package:Edustart/widgets/drawer.dart';
import 'package:Edustart/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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

                        // Icon(Icons.search,
                        //     color: LightColors.kDarkBlue, size: 25.0),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
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
          // Text("Satyam Jaiswal"),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 200.0,
                    width: double.infinity,
                    // child: Image.asset(
                    //   "assets/logo.png",
                    //   fit: BoxFit.contain,
                    // ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow:
                            // BoxShadow(color: Colors.black)
                            [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              // offset: Offset(6.0, 8.0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              // offset: Offset(-4.0, -2.0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 200.0,
                    width: double.infinity,
                    // child: Image.asset(
                    //   "assets/logo.png",
                    //   fit: BoxFit.contain,
                    // ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow:
                            // BoxShadow(color: Colors.black)
                            [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              // offset: Offset(6.0, 8.0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              // offset: Offset(-4.0, -2.0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 200.0,
                    width: double.infinity,
                    // child: Image.asset(
                    //   "assets/logo.png",
                    //   fit: BoxFit.contain,
                    // ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow:
                            // BoxShadow(color: Colors.black)
                            [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              // offset: Offset(6.0, 8.0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              // offset: Offset(-4.0, -2.0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ])),
        drawer: custdrawer()

        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       DrawerHeader(
        //         child: Center(
        //           child: Column(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: CircleAvatar(
        //                   backgroundColor: LightColors.kBlue,
        //                   radius: 35.0,
        //                   backgroundImage: AssetImage(
        //                     'assets/images/avatar.png',
        //                   ),
        //                 ),
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.all(14.0),
        //                 child: Text("Satyam Jaiswal"),
        //               )
        //             ],
        //           ),
        //         ),
        //         decoration: BoxDecoration(
        //           color: LightColors.kDarkYellow,
        //         ),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.calendar_today),
        //         title: Text('Calendar'),
        //         onTap: () {
        //           //TODO
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.assignment),
        //         title: Text('Assignment'),
        //         onTap: () {
        //           //TODO
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.question_answer),
        //         title: Text('Quiz'),
        //         onTap: () {
        //           //TODO
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.ballot_rounded),
        //         title: Text('Curriculum'),
        //         onTap: () {
        //           //TODO
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.help_outline),
        //         title: Text('Doubts'),
        //         onTap: () {
        //           //TODO
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.query_builder_outlined),
        //         title: Text('Preformance'),
        //         onTap: () {
        //           //TODO
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.description),
        //         title: Text('Lecture Notes'),
        //         onTap: () {
        //           //TODO
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.support_agent),
        //         title: Text('Support desk'),
        //         onTap: () {
        //           //TODO
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
