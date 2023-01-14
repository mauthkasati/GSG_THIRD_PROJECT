import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/providers/mainProvider.dart';
import 'package:gsg_third_project/widgets/reportWidgets/bodyOfReport.dart';
import 'package:gsg_third_project/widgets/reportWidgets/topOfReport.dart';
import 'package:provider/provider.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 225, 220),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopOfReport(),
            BodyOfReport(),
          ],
        ),
      ),
    );
  }
}
