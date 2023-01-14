import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final bool isHidden;
  const TextFieldContainer(this.controller, this.text, this.isHidden,
      {super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: w / 20, right: w / 20, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.3),
        border: Border.all(
          width: 1.5,
          color: const Color.fromARGB(255, 10, 90, 12),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      height: h / 15,
      width: w * 3 / 4,
      child: Center(
        child: TextField(
          obscureText: isHidden,
          decoration: new InputDecoration.collapsed(
            hintText: text,
          ),
          controller: controller,
          textAlign: TextAlign.center,
          onChanged: (value) {
            log(controller.text);
          },
        ),
      ),
    );
  }
}
