import 'package:flutter/material.dart';
import 'package:project_name/custom-widgets/custom-drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("About Screen"),
      ),
      body: Center(
        child: Text("About SCreen"),
      ),
    );
  }
}
