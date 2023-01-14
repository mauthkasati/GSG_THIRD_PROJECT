import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Achievements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h / 11,
      width: w / 1.2,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: const Color.fromARGB(255, 10, 90, 12),
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.withOpacity(0.3),
      ),
      child: Row(
        children: [
          Icon(
            Icons.star,
            size: 50,
            color: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your result is : 50%! Continue!",
                style: TextStyle(
                  wordSpacing: 0,
                  fontSize: 11,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    height: 13,
                    width: w / 4,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        topLeft: Radius.circular(7),
                      ),
                      color: Colors.amber,
                    ),
                  ),
                  Container(
                    height: 13,
                    width: w / 4,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(7),
                        topRight: Radius.circular(7),
                      ),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
