import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/screens/product-detail.dart';

class ProductCard extends StatelessWidget {
  final String imageURL;
  final String title;
  final double price;
  final String timesAgo;

  const ProductCard({
    Key? key,
    required this.imageURL,
    required this.title,
    required this.price,
    required this.timesAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ProductDetailScreen(
          ptitle: title,
          pprice: price,
          ptimesAgo: timesAgo,
          pimageURL: imageURL,
          pdescription: "description",
        ));
      },
      child: Container(
        color: Colors.grey[200],
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        child: Row(children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset(imageURL),
          ),
          SizedBox(width: 8),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(timesAgo),
                Text(price.toString()),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
