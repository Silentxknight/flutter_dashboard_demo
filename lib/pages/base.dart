import 'package:flutter/material.dart';
import 'package:dasboard_demo/pages/profile/profile.dart';
import 'package:dasboard_demo/pages/jobsfeed/jobfeed.dart';
import 'package:dasboard_demo/pages/dashboard/dasboard.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(
      title: 'Dashboard',
    ),
    JobFeedScreen(
      title: 'Job Description',
    ),
    ProfileScreen(
      title: 'Profile Page',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 12,
              ),
            ],
          ),
          child: BottomNavigationBar(
              elevation: 20,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections_bookmark_outlined),
                  label: 'Dashboard',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.new_releases_outlined),
                  label: 'New Offers',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.blueAccent[400],
              unselectedItemColor: Colors.blueAccent[400],
              unselectedLabelStyle: TextStyle(color: Colors.black45),
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 12.0,
              unselectedFontSize: 12.0),
        ));
  }
}
