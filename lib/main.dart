import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab3/page1.dart';
import 'package:lab3/page2.dart';
import 'package:lab3/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          )),
      home: Activity(),
    );
  }
}

class Activity extends StatefulWidget {
  Activity({Key key}) : super(key: key);

  @override
  ActivityState createState() => ActivityState();
}

class ActivityState extends State<Activity> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Page1(),
    );
  }
}
