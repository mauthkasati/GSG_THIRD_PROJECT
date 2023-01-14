import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/providers/mainProvider.dart';
import 'package:gsg_third_project/screens/loginScreen.dart';
import 'package:provider/provider.dart';

class TopOfReport extends StatelessWidget {
  const TopOfReport({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      // margin: const EdgeInsets.only(bottom: 40),
      padding: const EdgeInsets.all(20),
      width: w,
      height: h / 7,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 20, 140, 20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Report About A Problem",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
