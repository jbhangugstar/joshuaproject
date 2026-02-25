import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_10/tugas5.dart';
import 'package:joshuaproject/Day_11/tugas6_homepage2.dart';
import 'package:joshuaproject/Day_11/tugas6.dart';
import 'package:joshuaproject/Day_11/tugas6_homepage.dart';
import 'package:joshuaproject/Day_12/datapickerpage.dart';
import 'package:joshuaproject/Day_12/dropdownpage.dart';
import 'package:joshuaproject/Day_12/switchpage.dart';
import 'package:joshuaproject/Day_12/timepickerpage.dart';
import 'package:joshuaproject/Day_12/tugas7.dart';
import 'package:joshuaproject/Day_12/tugas8.dart';
import 'package:joshuaproject/Day_8/tugas4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Tugas8Flutter(),
    );
  }
}
