import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: 40,
      width: w * 3 / 4,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(top: 2, bottom: 2, right: 5, left: 5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.withOpacity(0.0),
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
      child: Row(
        children: [
          Icon(Icons.campaign),
          // Icon(Icons.assignment),
          TextButton(
            onPressed: () {
              log("hello");
            },
            child: SizedBox(
              width: w * 7 / 20,
              child: Text(
                "Name Of Assignment",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            width: w / 15,
          ),
          Container(
            padding: EdgeInsets.all(2),
            width: w / 6,
            // color: Colors.limeAccent,
            child: Row(
              children: const [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.amber,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Icon(
                    Icons.star,
                    size: 20,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.star,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
