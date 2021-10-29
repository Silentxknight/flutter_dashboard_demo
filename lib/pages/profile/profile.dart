import 'package:flutter/material.dart';
import 'package:dasboard_demo/pages/dashboard/dasboard.dart';
import 'package:dasboard_demo/pages/jobsfeed/jobfeed.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Text(
              "Profile page",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      )),
    );
  }
}
