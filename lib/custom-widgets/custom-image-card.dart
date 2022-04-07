import 'package:flutter/material.dart';

class CustomImageCard extends StatelessWidget {
  const CustomImageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: Image.asset(
        "assets/images/food.png",
        // fit: BoxFit.cover,
      ),
    );
  }
}
