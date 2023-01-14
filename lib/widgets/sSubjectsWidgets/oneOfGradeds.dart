import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OneOfGrades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h / 10,
      width: w * 4 / 5,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.withOpacity(0.0),
            Colors.blue,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        border: Border.all(
          width: 1.5,
          color: const Color.fromARGB(255, 10, 90, 12),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("date"),
          TextButton(
            onPressed: () {},
            child: Text(
              "name",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Text("Grade"),
        ],
      ),
    );
  }
}
