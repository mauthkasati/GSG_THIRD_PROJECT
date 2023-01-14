import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/widgets/sMainScreenWidgets/achievements.dart';
import 'package:gsg_third_project/widgets/sMainScreenWidgets/grid.dart';
import 'package:gsg_third_project/widgets/sMainScreenWidgets/topOfSMainScreen.dart';

class SMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 200, 225, 220),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 200, 225, 220),
            Color.fromARGB(255, 128, 206, 189),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade700.withOpacity(0.0),
            spreadRadius: 0,
            blurRadius: 0,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        // image: DecorationImage(
        //   image: AssetImage("assets/images/green.jpg"),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Column(
        children: [
          TopOfSMainScreen(),
          Achievements(),
          Container(
            height: 3,
            width: w,
            color: const Color.fromARGB(255, 20, 140, 20),
            margin: EdgeInsets.only(bottom: 15),
          ),
          Grid(),
        ],
      ),
    );
  }
}
