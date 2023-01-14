import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyOfReport extends StatelessWidget {
  // void _contact() async {
  //       final url = 'mailto:dude@gmail.com';
  //       if (await canLaunch(url)) {
  //         await launch(url);
  //       } else {
  //         throw 'Could not launch $url';
  //       }
  //     }
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 6 / 7,
      width: w,
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(25),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 200, 225, 220),
      ),
      child: Column(
        children: [
          SizedBox(
            height: h / 20,
          ),
          const Text(
            "send an email to admin",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: h / 40,
          ),
          Container(
            padding: EdgeInsets.all(w / 15),
            height: h / 2,
            width: w * 3 / 4,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3),
              border: Border.all(
                width: 1.5,
                color: const Color.fromARGB(255, 10, 90, 12),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Center(
                child: TextFormField(
                  maxLines: 8,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                  ),
                  // maxLines: 10,
                  controller: controller,
                  onChanged: (value) {
                    log(controller.text);
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: h / 15,
          ),
          ElevatedButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Center(
                    child: Text("تم الارسال بنجاح"),
                  ),
                  content: const Icon(
                    Icons.check_circle_outline,
                    size: 30,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('حسناً'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.send),
            label: const Text('send'),
          ),
        ],
      ),
    );
  }
}
