import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/custom-widgets/custom-drawer.dart';
import 'package:project_name/screens/about.dart';
import 'package:project_name/screens/contact.dart';

class ProductDetailScreen extends StatelessWidget {
  final String ptitle;
  final String pimageURL;
  final double pprice;
  final String ptimesAgo;
  final String pdescription;

  const ProductDetailScreen(
      {Key? key,
      required this.ptitle,
      required this.pimageURL,
      required this.pprice,
      required this.ptimesAgo,
      required this.pdescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("App Name"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),
        ],
      ),
      body: Column(children: [
        Container(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            pimageURL,
            fit: BoxFit.cover,
          ),
        ),
        Text(ptitle),
        Text(pprice.toString()),
        Text(ptimesAgo),
        Text(pdescription),
      ]),
    );
  }
}
