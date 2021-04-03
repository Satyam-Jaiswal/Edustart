import 'package:Edustart/theme_Data/theme.dart';
import 'package:Edustart/widgets/custback_button.dart';
import 'package:flutter/material.dart';

import 'LectureNotesPerSubject.dart';

class LectureNoteScreen extends StatefulWidget {
  @override
  _LectureNoteScreenState createState() => _LectureNoteScreenState();
}

class _LectureNoteScreenState extends State<LectureNoteScreen> {
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
                      'Lecture Notes',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w700),
                    ),
                  ]),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                            height: 250,
                            width: 250,
                            decoration: custBoxdesign,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.description,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Maths",
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "Subject (Teacher's Name)",
                                        ),
                                        Text(
                                          "9th Grade",
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                LectureNotesPerSubject(),
                                          ));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 90,
                                      child: Center(
                                          child: Text(
                                        "View",
                                        style: TextStyle(fontSize: 14),
                                      )),
                                      decoration: custBoxdesign.copyWith(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                            height: 250,
                            width: 250,
                            decoration: custBoxdesign,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.description,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Physics",
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "Subject (Teacher's Name)",
                                        ),
                                        Text(
                                          "9th Grade",
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                LectureNotesPerSubject(),
                                          ));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 90,
                                      child: Center(
                                          child: Text(
                                        "View",
                                        style: TextStyle(fontSize: 14),
                                      )),
                                      decoration: custBoxdesign.copyWith(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                            height: 250,
                            width: 250,
                            decoration: custBoxdesign,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.description,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Chemistry",
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "Subject (Teacher's Name)",
                                        ),
                                        Text(
                                          "9th Grade",
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                LectureNotesPerSubject(),
                                          ));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 90,
                                      child: Center(
                                          child: Text(
                                        "View",
                                        style: TextStyle(fontSize: 14),
                                      )),
                                      decoration: custBoxdesign.copyWith(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
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
