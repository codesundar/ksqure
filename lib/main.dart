import 'package:flutter/material.dart';
import 'package:project_name/home.dart';
import 'package:get/get.dart';
import 'package:project_name/screens/bottom-nav-example.dart';
import 'package:project_name/screens/http-example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HttpExample(),
    );
  }
}
