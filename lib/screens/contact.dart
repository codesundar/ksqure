import 'package:flutter/material.dart';
import 'package:project_name/custom-widgets/custom-drawer.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Contact Screen"),
      ),
      body: Center(
        child: Text("Contact SCreen"),
      ),
    );
  }
}
