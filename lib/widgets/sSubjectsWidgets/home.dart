import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/boxOfSSubjectInHome.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final date = DateTime.now();
    final thisDate = date.add(const Duration(days: 50));
    final String s = "${date.day}-${date.month}-${date.year}";
    return Container(
      color: const Color.fromARGB(255, 200, 225, 220),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BoxOfSSubjectInHome(),
            BoxOfSSubjectInHome(),
            BoxOfSSubjectInHome(),
            BoxOfSSubjectInHome(),
            BoxOfSSubjectInHome(),
            BoxOfSSubjectInHome(),
          ],
        ),
      ),
    );
  }
}
