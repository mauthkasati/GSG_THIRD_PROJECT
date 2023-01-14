import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/screens/loginScreen.dart';
import 'package:gsg_third_project/screens/report.dart';
import 'package:gsg_third_project/screens/s_mainScreen.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/chat.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/grades.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/home.dart';

class SSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 200, 225, 220),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 140, 20),
          title: Text("The Name Of The Course"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 160, 210, 205),
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.chat,
                  color: Color.fromARGB(255, 160, 210, 205),
                ),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(
                  Icons.leaderboard,
                  color: Color.fromARGB(255, 160, 210, 205),
                ),
                text: 'Grages',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Chat(),
            Grades(),
          ],
        ),
      ),
    );
  }
}
