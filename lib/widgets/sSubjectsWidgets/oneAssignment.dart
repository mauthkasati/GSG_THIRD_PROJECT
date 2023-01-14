import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OneAssignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: h / 7,
          width: w,
          decoration: const BoxDecoration(
            color: Colors.white24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: h / 9,
                width: h / 9,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black38,
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: w / 8,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Title",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: h * 6 / 7,
          width: w,
          color: Colors.blueGrey,
          child: Center(
            child: Container(
              height: h * 5 / 7,
              width: w * 4 / 5,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "date",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: w * 3.8 / 5,
                    color: Colors.black,
                  ),
                  Container(
                    height: h / 8,
                    width: w * 3 / 5,
                    // color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Activity Name",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.85 / 2,
                    width: w * 4 / 5,
                    padding: EdgeInsets.all(10),
                    color: Colors.black54,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "assignment state : ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "State",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "grade : ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "grade value",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "remaining time : ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "time",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "submitting state : ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "State",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Submit",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.green,
                    onPressed: () {},
                    child: Icon(
                      Icons.add_task,
                      // Icons.check
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
