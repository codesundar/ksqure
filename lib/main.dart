import 'package:flutter/material.dart';
import 'package:project_name/home.dart';
import 'package:get/get.dart';
import 'package:project_name/screens/bottom-nav-example.dart';
import 'package:project_name/screens/cart-logics/products.dart';
import 'package:project_name/screens/counter.dart';
import 'package:project_name/screens/geo-location-example.dart';
import 'package:project_name/screens/http-example.dart';
import 'package:project_name/screens/login.dart';
import 'package:project_name/screens/profile.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_name/screens/url-launcher-example.dart';

void main() async{
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GeolocationExample(),
    );
  }
}
