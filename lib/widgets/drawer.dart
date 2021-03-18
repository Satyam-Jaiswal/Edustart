import 'package:Edustart/theme_Data/colors.dart';
import 'package:flutter/material.dart';

class custdrawer extends StatefulWidget {
  @override
  _custdrawerState createState() => _custdrawerState();
}

class _custdrawerState extends State<custdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: LightColors.kBlue,
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        'assets/images/avatar.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text("Satyam Jaiswal"),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: LightColors.kDarkYellow,
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Calendar'),
            onTap: () {
              print("calender is tapped");
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text('Assignment'),
            onTap: () {
              //TODO
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('Quiz'),
            onTap: () {
              //TODO
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.ballot_rounded),
            title: Text('Curriculum'),
            onTap: () {
              //TODO
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Doubts'),
            onTap: () {
              //TODO
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.query_builder_outlined),
            title: Text('Preformance'),
            onTap: () {
              //TODO
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Lecture Notes'),
            onTap: () {
              //TODO
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text('Support desk'),
            onTap: () {
              //TODO
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
