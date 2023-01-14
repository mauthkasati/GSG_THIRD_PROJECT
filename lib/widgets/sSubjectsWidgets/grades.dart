import 'package:flutter/material.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/oneOfGradeds.dart';

class Grades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          OneOfGrades(),
          OneOfGrades(),
          OneOfGrades(),
          OneOfGrades(),
        ],
      ),
    );
  }
}
