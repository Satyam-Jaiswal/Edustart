import 'package:Edustart/theme_Data/theme.dart';
import 'package:Edustart/widgets/custback_button.dart';
import 'package:flutter/material.dart';

class LectureNotesPerSubject extends StatefulWidget {
  @override
  _LectureNotesPerSubjectState createState() => _LectureNotesPerSubjectState();
}

class _LectureNotesPerSubjectState extends State<LectureNotesPerSubject> {
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
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: custBoxdesign,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(children: [
                                      Icon(
                                        Icons.description,
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Real Numbers",
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Subject (Teacher's Name)",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Open",
                                            textAlign: TextAlign.right,
                                            style:
                                                TextStyle(color: Colors.orange),
                                          ),
                                        ),
                                      )
                                    ]),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: custBoxdesign,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(children: [
                                      Icon(
                                        Icons.description,
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Fraction",
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Subject (Teacher's Name)",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "open",
                                            textAlign: TextAlign.right,
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                        ),
                                      )
                                    ]),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: custBoxdesign,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Row(children: [
                                      Icon(
                                        Icons.description,
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Trignometry 1",
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Subject (Teacher's Name)",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "open",
                                            textAlign: TextAlign.right,
                                            style:
                                                TextStyle(color: Colors.orange),
                                          ),
                                        ),
                                      )
                                    ]),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
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
