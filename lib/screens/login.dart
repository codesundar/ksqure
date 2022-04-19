import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:project_name/screens/profile.dart';
import 'dart:convert';

import 'package:project_name/util/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();
  final box = GetStorage();

  login() async {
    print(_emailCtrl.text);
    print(_passwordCtrl.text);
    var resp = await http.post(
      Uri.parse(Constants().apiURL + "/auth/login"),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "email": _emailCtrl.text,
        "password": _passwordCtrl.text,
      }),
    );
    print(json.decode(resp.body));
    var tmp = json.decode(resp.body);
    if (tmp["status"] == true) {
      print(tmp["data"]["token"]);
      box.write('token', tmp["data"]["token"]);
      Get.offAll(ProfileScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              controller: _emailCtrl,
            ),
            TextField(
              controller: _passwordCtrl,
            ),
            TextButton(
              onPressed: () {
                login();
              },
              child: Text("Login"),
            )
          ],
        ));
  }
}
