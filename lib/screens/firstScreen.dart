import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  Timer(const Duration(milliseconds: 1400), () {
    //   context.setLocale(const Locale('en'));
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => LoginScreen(),
    //     ),
    //   );
    // });
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/schoolImage.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
