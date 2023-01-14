import 'package:flutter/material.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/activity.dart';

class BoxOfSSubjectInHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final date = DateTime.now();
    final thisDate = date.add(const Duration(days: 50));
    final String s = "${date.day}-${date.month}-${date.year}";
    return Container(
      margin: EdgeInsets.all(10),
      width: w * 4 / 5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.withOpacity(0.3),
            Colors.blue,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: const Color.fromARGB(255, 10, 90, 12),
        ),
      ),
      child: Column(
        children: [
          Text(
            s,
            style: TextStyle(fontSize: 18),
          ),
          Container(
            height: 1,
            width: w * 3 / 4,
            color: Colors.black,
          ),
          Column(
            children: [Activity(), Activity(), Activity()],
          ),
        ],
      ),
    );
  }
}
