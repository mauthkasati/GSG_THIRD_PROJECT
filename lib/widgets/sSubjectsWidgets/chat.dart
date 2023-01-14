import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/oneMessage.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    TextEditingController controller = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 35, bottom: 10),
            padding: EdgeInsets.all(10),
            height: h * 2 / 3,
            width: w * 4 / 5,
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 72,
                    backgroundColor: const Color.fromARGB(255, 10, 90, 12),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("assets/images/team.jpg"),
                    ),
                  ),
                  Text(
                    "Welcome!",
                    style: TextStyle(fontSize: 18),
                  ),
                  Column(
                    children: [
                      OneMessage(
                        "tsac javca ac asc jas ca\n\n\n\nnacasc\n\n\n\ncsaca1",
                      ),
                      OneMessage("hello"),
                      OneMessage("hello")
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: h / 12,
            width: w * 7 / 8,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 140, 20),
              borderRadius: BorderRadius.circular(h / 24),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        log("xcs");
                      },
                      icon: Icon(
                        Icons.thumb_up,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: w * 11 / 20,
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
                      child: TextField(
                        onChanged: (value) {
                          log(controller.text);
                        },
                        controller: controller,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.send,
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
