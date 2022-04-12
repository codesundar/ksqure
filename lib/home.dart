import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/custom-widgets/custom-drawer.dart';
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

  List _products = [
    {
      "imageURL": "assets/images/1.jpeg",
      "title": "iPhone",
      "price": "400",
      "timesAgo": "20 mins ago"
    },
    {
      "imageURL": "assets/images/2.jpeg",
      "title": "Samsung",
      "price": "4000",
      "timesAgo": "15 mins ago"
    },
    {
      "imageURL": "assets/images/3.jpeg",
      "title": "Moto",
      "price": "4000",
      "timesAgo": "50 mins ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
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
                child: ListView.builder(
                  itemCount: _products.length,
                  itemBuilder: (BuildContext bc, index) {
                    return ProductCard(
                      title: _products[index]["title"],
                      price: double.parse(_products[index]["price"]),
                      timesAgo: _products[index]["timesAgo"],
                      imageURL: _products[index]["imageURL"],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
