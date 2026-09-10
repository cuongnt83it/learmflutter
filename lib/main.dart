import 'package:flutter/material.dart';
import 'package:learnflutter/MyAppBar.dart';
import 'package:learnflutter/MyBotton.dart';
import 'package:learnflutter/MyBotton_2.dart';
import 'package:learnflutter/MyBotton_3.dart';
import 'package:learnflutter/MyContainer.dart';
import 'package:learnflutter/MyGestureDetector.dart';
import 'package:learnflutter/MyText.dart';

import 'MyAppBar.dart';

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

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyGestureDetector(),
    );
  }
}


