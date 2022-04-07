import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/home.dart';
import 'package:project_name/screens/about.dart';
import 'package:project_name/screens/contact.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("Navigate to home"),
            trailing: Icon(Icons.search),
            onTap: () {
              Get.to(HomeScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("About"),
            subtitle: Text("Navigate to home"),
            trailing: Icon(Icons.search),
            onTap: () {
              Get.to(AboutScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Contact"),
            subtitle: Text("Navigate to home"),
            trailing: Icon(Icons.search),
            onTap: () {
              Get.to(ContactScreen());
            },
          ),
        ],
      ),
    );
  }
}
