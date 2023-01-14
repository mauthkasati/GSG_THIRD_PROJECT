import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/appRouter.dart';
import 'package:gsg_third_project/myWidgets/textFieldContainer.dart';
import 'package:gsg_third_project/screens/report.dart';
import 'package:gsg_third_project/screens/s_mainScreen.dart';
import 'package:gsg_third_project/screens/s_subject.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 200, 225, 220),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 200, 225, 220),
                Color.fromARGB(255, 128, 206, 189),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700.withOpacity(0.0),
                spreadRadius: 0,
                blurRadius: 0,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            // image: DecorationImage(
            //   image: AssetImage("assets/images/green.jpg"),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(255, 20, 140, 20),
                    width: 5,
                  ),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 128, 206, 189),
                      Color.fromARGB(255, 75, 187, 165),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.blue.withOpacity(0.2),
                  //     spreadRadius: 3,
                  //     blurRadius: 2,
                  //     offset: const Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.school,
                    color: Color.fromARGB(255, 20, 140, 20),
                    size: 70,
                  ),
                ),
              ),
              SizedBox(height: h / 20),
              TextFieldContainer(
                controller1,
                "username",
                false,
              ),
              SizedBox(height: h / 30),
              TextFieldContainer(
                controller2,
                "password",
                true,
              ),
              SizedBox(height: h / 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SMainScreen(),
                    ),
                  );
                },
                child: const Text("Log In"),
              ),
              SizedBox(height: h / 10),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Report(),
                      ),
                    );
                  },
                  child: const Text(
                    "Report About a problem",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
