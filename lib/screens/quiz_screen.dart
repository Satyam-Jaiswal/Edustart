import 'package:Edustart/theme_Data/theme.dart';
import 'package:Edustart/widgets/custback_button.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
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
                      'Quiz',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w700),
                    ),
                  ]),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new DropdownButton<String>(
                        hint: Text("Choose Subject"),
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<String>(
                        hint: Text("Choose Status"),
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Apply now",
                      style: TextStyle(color: Colors.white),
                    )),
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    // height: 10000,
                    // color: Colors.pink,
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
                                              "Quiz 1",
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
                                            "Done",
                                            textAlign: TextAlign.right,
                                            style:
                                                TextStyle(color: Colors.green),
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
                                              "Quiz 2",
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
                                            "Graded",
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
                                              "Quiz 3",
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
                                            "Done",
                                            textAlign: TextAlign.right,
                                            style:
                                                TextStyle(color: Colors.green),
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
                                              "Quiz 3",
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
                                            "Done",
                                            textAlign: TextAlign.right,
                                            style:
                                                TextStyle(color: Colors.green),
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
                                              "Quiz 3",
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
                                            "Done",
                                            textAlign: TextAlign.right,
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                        ),
                                      )
                                    ]),
                                  )),
                            )
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
