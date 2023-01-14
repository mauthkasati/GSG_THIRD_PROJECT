// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OneMessage extends StatelessWidget {
  final String text;
  const OneMessage(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      width: w * 3.5 / 5,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.brown,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
