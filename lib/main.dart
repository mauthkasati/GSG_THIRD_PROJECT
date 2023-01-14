import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gsg_third_project/providers/mainProvider.dart';
import 'package:gsg_third_project/screens/firstScreen.dart';
import 'package:gsg_third_project/screens/loginScreen.dart';
import 'package:gsg_third_project/screens/report.dart';
import 'package:gsg_third_project/screens/s_mainScreen.dart';
import 'package:gsg_third_project/screens/s_subject.dart';
import 'package:gsg_third_project/screens/submitFile.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/home.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/oneActivity.dart';
import 'package:gsg_third_project/widgets/sSubjectsWidgets/oneAssignment.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MainProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
