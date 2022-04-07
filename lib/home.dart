import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/custom-widgets/product-card.dart';
import 'package:project_name/screens/product-detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passwordCtrl = TextEditingController();

  var count = 0;
  var _isOn = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Text("Hello"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red[100],
                  ),
                  Container(
                    child: Text("Hello"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red[100],
                  ),
                  Container(
                    child: Text("Hello"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red[100],
                  ),
                  Container(
                    child: Text("Hello"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red[100],
                  ),
                  Container(
                    child: Text("Hello"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red[100],
                  ),
                  Container(
                    child: Text("Hello"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red[100],
                  ),
                  Container(
                    child: Text("Hello"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red[100],
                  ),
                  Container(
                    child: Text("Hello"),
                    padding: EdgeInsets.all(8.0),
                    color: Colors.red[100],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ProductCard(
                      title: "iPhone",
                      price: 400,
                      timesAgo: "5 mins ago",
                      imageURL: "assets/images/1.jpeg",
                    ),
                    ProductCard(
                      title: "Samsung",
                      price: 500,
                      timesAgo: "15 mins ago",
                      imageURL: "assets/images/2.jpeg",
                    ),
                    ProductCard(
                      title: "Android",
                      price: 4000,
                      timesAgo: "50 mins ago",
                      imageURL: "assets/images/3.jpeg",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
