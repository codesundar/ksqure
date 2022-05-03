import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_name/controllers/cart.dart';
import 'package:project_name/screens/cart-logics/checkout.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({Key? key}) : super(key: key);
  CartController _cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        actions: [],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: _cartController.cart.length,
                  itemBuilder: (bc, index) {
                    return ListTile(
                      title: Text(_cartController.cart[index]['name']),
                      subtitle: Text(
                          "${_cartController.cart[index]['qty']} x ${_cartController.cart[index]['price']}"),
                      trailing: Text(
                          "${_cartController.cart[index]['qty'] * _cartController.cart[index]['price']}"),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text("Checkout ${_cartController.finalPrice}"),
            )
          ],
        ),
      ),
    );
  }
}
