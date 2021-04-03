import 'package:Edustart/theme_Data/theme.dart';
import 'package:Edustart/widgets/custback_button.dart';
import 'package:flutter/material.dart';

class AssigmentScreen extends StatefulWidget {
  @override
  _AssigmentScreenState createState() => _AssigmentScreenState();
}

class _AssigmentScreenState extends State<AssigmentScreen> {
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
                      'My Assignment',
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
                // color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Apply now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
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
                                              "Assignmnet 1",
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
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      _buildPopupDialog(context),
                                );
                              },
                              child: Padding(
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
                                                "Assignmnet 2",
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
                                              "Assigned",
                                              textAlign: TextAlign.right,
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        )
                                      ]),
                                    )),
                              ),
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
                                              "Assignmnet 1",
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
                                              "Assignmnet 1",
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
                                              "Assignmnet 1",
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

  _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      content: new Container(
          // decoration: custBoxdesign,
          height: 400,
          child: Column(
            children: [
              Row(children: [
                Icon(
                  Icons.description,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Assignmnet 2",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Subject (Teacher's Name)",
                      ),
                    ],
                  ),
                )
              ]),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: Text("10 Points"),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Assigned",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Divider(
                  color: Colors.black,
                  thickness: 2.0,
                ),
              ),
              Container(
                // height: 250,
                width: 280,
                decoration: custBoxdesign,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 90,
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                "View",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "Assignment",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )),
                          decoration: custBoxdesign.copyWith(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Your work",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 2, 2, 2),
                            child: Icon(Icons.add),
                          ),
                          Center(
                              child: Text(
                            "Add work",
                            style: TextStyle(fontSize: 12),
                          )),
                        ],
                      ),
                      decoration: custBoxdesign.copyWith(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
