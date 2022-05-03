import 'package:get/get.dart';

class CartController extends GetxController {
  var products = [
    {
      "id": 1,
      "name": "apple",
      "qty": 1,
      "price": 10,
    },
    {
      "id": 2,
      "name": "Banana",
      "qty": 1,
      "price": 14,
    },
    {
      "id": 3,
      "name": "Carrot",
      "qty": 1,
      "price": 12,
    },
    {
      "id": 4,
      "name": "Orange",
      "qty": 1,
      "price": 16,
    },
  ];
  var cart = [].obs;
  var finalPrice = 0.obs;
  var cartQty = 0.obs;

  addToCart(newitem) {
    print(newitem);
    var index = cart.indexWhere((existing) => existing['id'] == newitem['id']);
    if (index == -1) {
      cart.add(newitem);
    } else {
      cart[index]['qty'] = cart[index]['qty'] + 1;
    }
    print(cart);
    cart.refresh();
    calculate();
  }

  removeCart(existingItem) {
    var index =
        cart.indexWhere((existing) => existing['id'] == existingItem['id']);
    if (index == -1) {
      print("No item found");
    } else {
      cart[index]['qty'] = cart[index]['qty'] - 1;
    }
    print(cart);
    cart.refresh();
    calculate();
  }

  calculate() {
    cartQty.value = cart.length;
    var tmpTotal = 0;
    cart.forEach((item) {
      tmpTotal = item['qty'] * item['price'];
    });
    finalPrice.value = finalPrice.value + tmpTotal;
    print(cartQty);
    print(finalPrice);
  }
}
