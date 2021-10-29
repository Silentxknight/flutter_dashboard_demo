import 'package:flutter/material.dart';
import 'package:dasboard_demo/pages/profile/profile.dart';
import 'package:dasboard_demo/pages/jobsfeed/jobfeed.dart';
import 'package:dasboard_demo/pages/dashboard/dasboard.dart';

class DashboardScreen extends StatefulWidget {
  // const DashboardScreen({ Key? key }) : super(key: key);
  const DashboardScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 8,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 70, 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 2, 70, 2),
                          child: Text(
                            'Welcome Jhon',
                            style: TextStyle(
                              color: Colors.blueAccent[400],
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Here is an overview of your application:',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'You still have not applied to any Offers ',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.fact_check_outlined,
                            size: 38,
                            color: Colors.blueAccent[400],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blueAccent[400]),
                              ),
                              Text('Offers Applied',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blueAccent[400])),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi_sharp,
                            size: 38,
                            color: Colors.blueAccent[400],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                '12',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blueAccent[400]),
                              ),
                              Text('Offers Saved',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blueAccent[400])),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: .2,
                        minHeight: 35,
                        semanticsLabel: 'Linear ',
                        backgroundColor: Colors.grey[200],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                          child: Text(
                        "Profile Completion: 10%",
                        style: TextStyle(fontSize: 18),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                        child: Text(
                          'Apply for job',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent[400]),
                        child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.add_outlined),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
