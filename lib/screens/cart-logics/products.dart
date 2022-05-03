import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/controllers/cart.dart';
import 'package:project_name/screens/cart-logics/cart.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({Key? key}) : super(key: key);

  CartController _cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Products"),
        ),
        body: GridView.builder(
          itemCount: _cartController.products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (bc, index) {
            return Container(
              child: Column(children: [
                Text("${_cartController.products[index]['name']}"),
                Text("${_cartController.products[index]['price']}"),
                Row(
                  children: [
                    TextButton(
                      child: Text("+"),
                      onPressed: () {
                        _cartController
                            .addToCart(_cartController.products[index]);
                      },
                    ),
                    TextButton(
                      child: Text("-"),
                      onPressed: () {
                        _cartController
                            .removeCart(_cartController.products[index]);
                      },
                    )
                  ],
                )
              ]),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(CartScreen());
          },
          child: Obx(
            () => Text(
              _cartController.cartQty.value.toString(),
            ),
          ),
        ));
  }
}
