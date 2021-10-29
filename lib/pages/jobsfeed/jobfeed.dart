import 'package:flutter/material.dart';
import 'package:dasboard_demo/pages/dashboard/dasboard.dart';
import 'package:dasboard_demo/pages/profile/profile.dart';

class JobFeedScreen extends StatefulWidget {
  const JobFeedScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _JobFeedScreenState createState() => _JobFeedScreenState();
}

class _JobFeedScreenState extends State<JobFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Text(
              "Offers page",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      )),
    );
  }
}
