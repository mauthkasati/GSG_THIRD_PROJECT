import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopOfSMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h / 7,
      width: w,
      padding: EdgeInsets.all(w / 31),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 20, 140, 20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: h / 10,
            width: h / 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 160, 210, 205),
            ),
            child: Center(
              child: Text(
                "M",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            margin: EdgeInsets.only(left: w / 27),
            height: h / 40,
            width: w / 7,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 160, 210, 205),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.auto_stories,
                  size: 13,
                ),
                Text(
                  "1521",
                  style: TextStyle(
                    fontSize: 10,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            margin: EdgeInsets.only(left: w / 22),
            height: h / 40,
            width: w / 7,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 160, 210, 205),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.star,
                  size: 13,
                ),
                Text(
                  "15251",
                  style: TextStyle(
                    fontSize: 10,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            margin: EdgeInsets.only(left: w / 22),
            height: h / 40,
            width: w / 7,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 160, 210, 205),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.leaderboard,
                  size: 13,
                ),
                Text(
                  "15",
                  style: TextStyle(
                    fontSize: 10,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: w / 30,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 20, 140, 20),
            child: const Icon(
              Icons.settings,
              size: 40,
              color: Color.fromARGB(255, 5, 63, 57),
              shadows: [],
            ),
          )
        ],
      ),
    );
  }
}
