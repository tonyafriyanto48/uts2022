import 'package:flutter/material.dart';
import 'package:uts_flutter/profile.dart';
import 'package:uts_flutter/profile.dart';
import 'package:uts_flutter/loginpage.dart';
import 'package:uts_flutter/regist.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: rgstScreen(),
    );
  }
}